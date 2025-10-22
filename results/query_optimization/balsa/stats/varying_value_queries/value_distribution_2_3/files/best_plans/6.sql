/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<37 AND p.CommentCount>2 AND p.CommentCount<15 AND u.DownVotes>130 AND u.DownVotes<929 AND v.CreationDate>'2014-05-08 01:21:13'::timestamp AND v.CreationDate<'2014-05-24 23:07:45'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<13 AND b.Date>'2012-01-26 04:57:59'::timestamp AND b.Date<'2014-09-12 10:11:10'::timestamp;

