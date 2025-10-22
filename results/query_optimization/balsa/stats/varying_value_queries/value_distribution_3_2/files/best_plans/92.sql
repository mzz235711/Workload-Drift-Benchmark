/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<155 AND p.CommentCount>13 AND p.CommentCount<29 AND u.DownVotes>54 AND u.DownVotes<360 AND v.CreationDate>'2012-06-22 14:49:00'::timestamp AND v.CreationDate<'2013-03-16 12:05:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2013-03-24 12:45:13'::timestamp AND b.Date<'2014-01-25 21:02:51'::timestamp;

