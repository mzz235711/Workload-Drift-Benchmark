/*+ NestLoop(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>57 AND p.Score<89 AND p.CommentCount>2 AND p.CommentCount<7 AND u.DownVotes>82 AND u.DownVotes<1012 AND v.CreationDate>'2009-06-08 16:08:59'::timestamp AND v.CreationDate<'2014-01-26 04:59:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2010-11-22 08:23:05'::timestamp AND b.Date<'2012-09-22 22:42:39'::timestamp;

