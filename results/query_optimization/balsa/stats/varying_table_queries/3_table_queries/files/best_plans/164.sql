/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-04 17:37:11'::timestamp;

