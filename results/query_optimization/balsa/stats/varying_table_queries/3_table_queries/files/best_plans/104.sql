/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score>=0 AND p.CreationDate>='2010-08-18 11:37:10'::timestamp AND p.CreationDate<='2014-09-12 22:49:11'::timestamp AND pl.LinkTypeId=1;

