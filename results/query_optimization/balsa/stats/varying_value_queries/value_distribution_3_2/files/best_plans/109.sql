/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<183 AND p.CommentCount>7 AND p.CommentCount<9 AND u.DownVotes>172 AND u.DownVotes<1561 AND v.CreationDate>'2010-05-14 15:07:23'::timestamp AND v.CreationDate<'2013-10-29 16:55:05'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2012-03-31 21:48:42'::timestamp AND b.Date<'2012-07-20 21:51:21'::timestamp;

