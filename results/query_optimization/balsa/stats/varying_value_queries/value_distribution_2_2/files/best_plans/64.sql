/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<10 AND p.CommentCount>8 AND p.CommentCount<30 AND u.DownVotes>11 AND u.DownVotes<1585 AND v.CreationDate>'2010-07-06 00:53:16'::timestamp AND v.CreationDate<'2011-04-20 12:47:36'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2013-06-17 11:59:13'::timestamp AND b.Date<'2013-11-28 08:28:03'::timestamp;

