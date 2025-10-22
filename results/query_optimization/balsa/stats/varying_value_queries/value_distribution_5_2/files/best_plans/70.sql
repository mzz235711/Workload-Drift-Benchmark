/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<86 AND p.CommentCount>2 AND p.CommentCount<18 AND u.DownVotes>290 AND u.DownVotes<604 AND v.CreationDate>'2009-06-23 22:35:26'::timestamp AND v.CreationDate<'2012-05-28 11:32:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-07-15 16:00:51'::timestamp AND b.Date<'2012-11-13 21:53:56'::timestamp;

