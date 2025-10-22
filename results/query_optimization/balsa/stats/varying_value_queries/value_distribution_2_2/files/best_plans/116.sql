/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>63 AND p.Score<110 AND p.CommentCount>7 AND p.CommentCount<24 AND u.DownVotes>179 AND u.DownVotes<1322 AND v.CreationDate>'2010-10-06 07:55:51'::timestamp AND v.CreationDate<'2012-05-24 19:20:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-08-17 02:23:46'::timestamp AND b.Date<'2012-09-26 09:20:21'::timestamp;

