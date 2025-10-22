/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<45 AND p.CommentCount>4 AND p.CommentCount<31 AND u.DownVotes>312 AND u.DownVotes<1266 AND v.CreationDate>'2011-11-06 06:06:05'::timestamp AND v.CreationDate<'2013-11-04 19:59:59'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2014-04-22 11:36:11'::timestamp AND b.Date<'2014-08-18 11:49:44'::timestamp;

