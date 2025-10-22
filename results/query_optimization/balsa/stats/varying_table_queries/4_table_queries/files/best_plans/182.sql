/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate>='2010-08-17 17:18:02'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-09-30 16:32:06'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.DownVotes<=0;

