/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<184 AND p.CommentCount>8 AND p.CommentCount<37 AND u.DownVotes>470 AND u.DownVotes<1703 AND v.CreationDate>'2009-04-23 18:56:19'::timestamp AND v.CreationDate<'2012-07-23 08:00:20'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2012-04-16 15:57:28'::timestamp AND b.Date<'2013-06-01 17:49:58'::timestamp;

