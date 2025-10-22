/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-13 21:25:20'::timestamp AND pl.CreationDate>='2010-10-27 10:02:57'::timestamp AND pl.CreationDate<='2014-08-08 14:18:00'::timestamp;

