/*+ HashJoin(b v u p)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<43 AND p.CommentCount>3 AND p.CommentCount<31 AND u.DownVotes>721 AND u.DownVotes<1432 AND v.CreationDate>'2013-09-12 13:21:22'::timestamp AND v.CreationDate<'2014-03-05 03:06:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-08-08 07:26:00'::timestamp AND b.Date<'2013-10-09 09:50:58'::timestamp;

