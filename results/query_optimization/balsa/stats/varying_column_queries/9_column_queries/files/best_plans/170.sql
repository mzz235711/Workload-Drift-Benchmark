/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.CreationDate>='2010-08-03 19:20:49'::timestamp AND p.ViewCount<=3353 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-22 13:40:30'::timestamp AND p.CreationDate<='2014-08-14 12:54:10'::timestamp AND u.Reputation>=1 AND u.DownVotes<=0 AND u.UpVotes>=0;

