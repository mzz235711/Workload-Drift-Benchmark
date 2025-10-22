/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount<=12 AND p.FavoriteCount<=15 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-09-08 14:20:00'::timestamp AND ph.PostHistoryTypeId=5;

