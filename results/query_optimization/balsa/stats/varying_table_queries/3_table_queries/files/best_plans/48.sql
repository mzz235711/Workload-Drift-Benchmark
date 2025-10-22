/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount>=0 AND pl.CreationDate<='2014-08-21 14:14:46'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-03-05 20:38:55'::timestamp;

