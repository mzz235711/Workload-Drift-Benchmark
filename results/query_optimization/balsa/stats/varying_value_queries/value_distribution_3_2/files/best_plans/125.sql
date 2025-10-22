/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<181 AND p.CommentCount>18 AND p.CommentCount<43 AND u.DownVotes>107 AND u.DownVotes<970 AND v.CreationDate>'2011-05-20 04:11:40'::timestamp AND v.CreationDate<'2012-09-29 22:21:59'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<10 AND b.Date>'2013-01-03 15:38:05'::timestamp AND b.Date<'2014-08-30 10:20:16'::timestamp;

