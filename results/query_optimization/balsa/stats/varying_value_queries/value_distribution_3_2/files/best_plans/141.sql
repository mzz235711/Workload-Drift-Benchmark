/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<174 AND p.CommentCount>6 AND p.CommentCount<22 AND u.DownVotes>179 AND u.DownVotes<1728 AND v.CreationDate>'2009-06-22 19:14:31'::timestamp AND v.CreationDate<'2014-01-13 21:02:40'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2013-08-15 05:12:18'::timestamp AND b.Date<'2014-01-15 13:50:33'::timestamp;

