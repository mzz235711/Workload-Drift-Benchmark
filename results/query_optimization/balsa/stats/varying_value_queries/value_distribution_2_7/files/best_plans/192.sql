/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<22 AND p.CommentCount>14 AND p.CommentCount<37 AND u.DownVotes>319 AND u.DownVotes<1317 AND v.CreationDate>'2009-08-15 14:56:18'::timestamp AND v.CreationDate<'2012-01-13 02:41:51'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-09-22 03:32:39'::timestamp AND b.Date<'2014-02-11 21:57:51'::timestamp;

