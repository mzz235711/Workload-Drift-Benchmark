/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>71 AND p.Score<188 AND p.CommentCount>3 AND p.CommentCount<22 AND u.DownVotes>208 AND u.DownVotes<1259 AND v.CreationDate>'2012-11-06 04:12:11'::timestamp AND v.CreationDate<'2012-12-28 05:48:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2013-08-30 07:06:34'::timestamp AND b.Date<'2014-07-24 18:53:05'::timestamp;

