/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<82 AND p.CommentCount>10 AND p.CommentCount<36 AND u.DownVotes>314 AND u.DownVotes<1657 AND v.CreationDate>'2011-05-08 21:35:33'::timestamp AND v.CreationDate<'2013-10-03 19:17:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-09-20 15:43:33'::timestamp AND b.Date<'2011-10-05 23:26:12'::timestamp;

