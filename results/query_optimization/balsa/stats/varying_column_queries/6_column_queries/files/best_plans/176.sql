/*+ HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((((c u) p) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.FavoriteCount>=0 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Views<=363 AND u.DownVotes<=0 AND u.CreationDate>='2010-07-27 21:09:02'::timestamp;

