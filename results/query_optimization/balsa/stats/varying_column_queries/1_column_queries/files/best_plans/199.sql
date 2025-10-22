/*+ HashJoin(ph pl p)
 HashJoin(ph pl)
 IndexScan(ph)
 IndexScan(pl)
 SeqScan(p)
 Leading(((ph pl) p)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND pl.CreationDate<='2014-06-02 03:26:54'::timestamp;

