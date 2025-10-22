/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<163 AND p.CommentCount>2 AND p.CommentCount<31 AND u.DownVotes>154 AND u.DownVotes<419 AND v.CreationDate>'2009-06-01 08:13:01'::timestamp AND v.CreationDate<'2014-01-04 01:16:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-02-26 07:21:32'::timestamp AND b.Date<'2012-08-15 15:37:55'::timestamp;

