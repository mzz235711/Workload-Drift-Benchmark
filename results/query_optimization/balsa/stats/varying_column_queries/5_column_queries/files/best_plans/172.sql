/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score>=0 AND p.FavoriteCount<=15 AND p.CreationDate<='2014-08-07 15:33:16'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-11-23 07:50:07'::timestamp;

