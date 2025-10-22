/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<183 AND p.CommentCount>10 AND p.CommentCount<28 AND u.DownVotes>629 AND u.DownVotes<1178 AND v.CreationDate>'2010-08-29 00:29:04'::timestamp AND v.CreationDate<'2012-03-24 17:29:24'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2010-12-09 23:21:03'::timestamp AND b.Date<'2011-10-07 05:05:00'::timestamp;

