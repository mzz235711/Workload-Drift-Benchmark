/*+ HashJoin(ph c v pl p)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (c (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-08-21 05:49:42'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

