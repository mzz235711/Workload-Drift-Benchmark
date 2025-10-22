/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<21 AND p.CommentCount>1 AND p.CommentCount<21 AND u.DownVotes>235 AND u.DownVotes<858 AND v.CreationDate>'2009-11-03 23:53:28'::timestamp AND v.CreationDate<'2013-01-29 05:49:38'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2012-06-12 00:37:00'::timestamp AND b.Date<'2013-04-19 22:06:34'::timestamp;

