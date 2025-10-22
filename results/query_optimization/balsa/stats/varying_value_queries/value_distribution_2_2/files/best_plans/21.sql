/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<104 AND p.CommentCount>0 AND p.CommentCount<13 AND u.DownVotes>66 AND u.DownVotes<1396 AND v.CreationDate>'2011-08-12 08:40:51'::timestamp AND v.CreationDate<'2012-12-15 10:44:04'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2011-06-06 07:01:18'::timestamp AND b.Date<'2012-07-24 18:25:20'::timestamp;

