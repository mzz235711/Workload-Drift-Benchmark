/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<49 AND p.CommentCount>15 AND p.CommentCount<30 AND u.DownVotes>282 AND u.DownVotes<927 AND v.CreationDate>'2010-07-11 05:08:11'::timestamp AND v.CreationDate<'2012-12-19 20:55:14'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2010-09-08 22:02:27'::timestamp AND b.Date<'2012-11-29 20:46:18'::timestamp;

