/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<111 AND p.CommentCount>5 AND p.CommentCount<24 AND u.DownVotes>164 AND u.DownVotes<1440 AND v.CreationDate>'2011-09-13 00:34:29'::timestamp AND v.CreationDate<'2014-08-05 11:12:46'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<13 AND b.Date>'2013-08-18 21:01:49'::timestamp AND b.Date<'2014-06-05 15:46:34'::timestamp;

