/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score=0 AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND pl.CreationDate>='2011-01-23 21:02:17'::timestamp AND pl.CreationDate<='2014-08-18 17:46:44'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-09-24 02:56:56'::timestamp;

