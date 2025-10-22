/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<113 AND p.CommentCount>12 AND p.CommentCount<44 AND u.DownVotes>154 AND u.DownVotes<1300 AND v.CreationDate>'2009-06-06 00:51:59'::timestamp AND v.CreationDate<'2012-08-27 01:30:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-09-19 09:32:35'::timestamp AND b.Date<'2012-01-05 18:34:39'::timestamp;

