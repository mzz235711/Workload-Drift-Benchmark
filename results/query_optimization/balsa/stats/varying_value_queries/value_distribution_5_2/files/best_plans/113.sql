/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<158 AND p.CommentCount>12 AND p.CommentCount<38 AND u.DownVotes>386 AND u.DownVotes<1013 AND v.CreationDate>'2009-05-18 01:33:14'::timestamp AND v.CreationDate<'2013-01-28 20:59:12'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-08-08 20:13:02'::timestamp AND b.Date<'2013-09-05 17:49:52'::timestamp;

