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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.Score>=0 AND p.ViewCount>=0 AND pl.CreationDate>='2011-02-08 02:24:03'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

