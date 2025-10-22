/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<22 AND p.CommentCount>8 AND p.CommentCount<18 AND u.DownVotes>130 AND u.DownVotes<1765 AND v.CreationDate>'2010-11-05 17:08:59'::timestamp AND v.CreationDate<'2013-01-11 07:31:00'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2010-08-20 08:27:47'::timestamp AND b.Date<'2013-06-10 22:36:31'::timestamp;

