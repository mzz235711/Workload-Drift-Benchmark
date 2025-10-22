/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<143 AND p.CommentCount>12 AND p.CommentCount<32 AND u.DownVotes>300 AND u.DownVotes<1840 AND v.CreationDate>'2009-08-15 09:49:25'::timestamp AND v.CreationDate<'2013-09-07 21:41:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-07-01 08:44:52'::timestamp AND b.Date<'2013-10-16 18:43:42'::timestamp;

