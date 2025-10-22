/*+ MergeJoin(ph p pl)
 HashJoin(p pl)
 IndexScan(ph)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score<=13 AND p.CreationDate>='2010-08-16 17:27:28'::timestamp AND pl.LinkTypeId=1;

