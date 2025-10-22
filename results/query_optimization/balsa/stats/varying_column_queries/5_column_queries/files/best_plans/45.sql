/*+ HashJoin(ph pl p c v)
 HashJoin(ph pl p c)
 HashJoin(pl p c)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(c)
 SeqScan(v)
 Leading(((ph ((pl p) c)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-08-21 05:49:42'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

