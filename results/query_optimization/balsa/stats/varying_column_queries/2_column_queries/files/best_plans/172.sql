/*+ HashJoin(u ph p)
 HashJoin(ph p)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(p)
 Leading((u (ph p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-08 18:59:26'::timestamp;

