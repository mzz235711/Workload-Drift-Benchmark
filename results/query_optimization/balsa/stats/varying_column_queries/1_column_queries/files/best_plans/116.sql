/*+ HashJoin(p ph pl)
 HashJoin(ph pl)
 SeqScan(p)
 SeqScan(ph)
 IndexScan(pl)
 Leading((p (ph pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND ph.CreationDate>='2010-11-19 11:32:02'::timestamp;

