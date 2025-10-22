/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND pl.CreationDate<='2014-07-16 14:00:16'::timestamp AND ph.PostHistoryTypeId=3;

