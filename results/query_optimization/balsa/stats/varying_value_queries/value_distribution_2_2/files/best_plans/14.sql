/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<101 AND p.CommentCount>9 AND p.CommentCount<20 AND u.DownVotes>14 AND u.DownVotes<1608 AND v.CreationDate>'2011-04-11 17:22:02'::timestamp AND v.CreationDate<'2013-04-26 15:02:27'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2012-04-09 19:40:17'::timestamp AND b.Date<'2014-04-08 05:37:12'::timestamp;

