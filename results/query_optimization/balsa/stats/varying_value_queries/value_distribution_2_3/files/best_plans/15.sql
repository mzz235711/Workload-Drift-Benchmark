/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<57 AND p.CommentCount>11 AND p.CommentCount<31 AND u.DownVotes>33 AND u.DownVotes<1591 AND v.CreationDate>'2010-12-24 03:02:04'::timestamp AND v.CreationDate<'2012-06-25 01:09:09'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2010-07-20 18:08:20'::timestamp AND b.Date<'2011-06-04 09:57:59'::timestamp;

