/*+ NestLoop(u p v ph)
 NestLoop(u p v)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 IndexScan(ph)
 Leading((((u p) v) ph)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-07-22 12:06:28'::timestamp AND p.Score=1 AND p.ViewCount>=0 AND p.ViewCount<=3251 AND p.FavoriteCount<=3;

