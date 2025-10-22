/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>100 AND p.Score<156 AND p.CommentCount>4 AND p.CommentCount<21 AND u.DownVotes>561 AND u.DownVotes<1386 AND v.CreationDate>'2011-10-22 07:32:25'::timestamp AND v.CreationDate<'2012-09-14 04:41:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-09-06 06:31:33'::timestamp AND b.Date<'2013-01-30 18:47:07'::timestamp;

