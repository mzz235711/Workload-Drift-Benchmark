/*+ HashJoin(p pl ph)
 HashJoin(pl ph)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(ph)
 Leading((p (pl ph))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=63 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=24;

