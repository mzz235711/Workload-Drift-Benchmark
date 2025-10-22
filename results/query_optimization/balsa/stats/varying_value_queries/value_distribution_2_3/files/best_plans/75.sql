/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<111 AND p.CommentCount>0 AND p.CommentCount<15 AND u.DownVotes>107 AND u.DownVotes<155 AND v.CreationDate>'2009-03-11 06:23:42'::timestamp AND v.CreationDate<'2012-11-29 12:18:15'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2011-10-28 22:34:39'::timestamp AND b.Date<'2012-10-04 18:36:36'::timestamp;

