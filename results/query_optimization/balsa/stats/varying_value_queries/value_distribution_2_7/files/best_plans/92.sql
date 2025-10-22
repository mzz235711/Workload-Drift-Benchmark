/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<186 AND p.CommentCount>2 AND p.CommentCount<12 AND u.DownVotes>601 AND u.DownVotes<1399 AND v.CreationDate>'2011-01-22 19:35:33'::timestamp AND v.CreationDate<'2013-05-01 09:18:00'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-08-15 14:58:47'::timestamp AND b.Date<'2012-09-28 00:54:51'::timestamp;

