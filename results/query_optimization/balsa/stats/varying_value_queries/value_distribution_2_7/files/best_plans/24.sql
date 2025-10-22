/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<119 AND p.CommentCount>0 AND p.CommentCount<21 AND u.DownVotes>67 AND u.DownVotes<1638 AND v.CreationDate>'2010-04-27 00:37:18'::timestamp AND v.CreationDate<'2010-09-10 14:47:19'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2011-11-15 16:41:29'::timestamp AND b.Date<'2012-08-01 01:23:14'::timestamp;

