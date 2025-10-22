/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<187 AND p.CommentCount>5 AND p.CommentCount<7 AND u.DownVotes>315 AND u.DownVotes<380 AND v.CreationDate>'2009-11-08 22:59:09'::timestamp AND v.CreationDate<'2011-09-13 20:47:08'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2012-12-23 06:13:28'::timestamp AND b.Date<'2013-09-16 03:51:02'::timestamp;

