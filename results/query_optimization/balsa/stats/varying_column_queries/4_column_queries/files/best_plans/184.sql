/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score=5 AND p.CreationDate<='2014-09-07 17:19:18'::timestamp AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-07-20 23:21:05'::timestamp;

