/*+ HashJoin(u p pl)
 MergeJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND pl.CreationDate>='2010-10-24 15:57:33'::timestamp;

