/*+ HashJoin(ph pl p)
 HashJoin(ph pl)
 IndexScan(ph)
 IndexScan(pl)
 SeqScan(p)
 Leading(((ph pl) p)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND ph.CreationDate<='2014-09-11 14:18:16'::timestamp;

