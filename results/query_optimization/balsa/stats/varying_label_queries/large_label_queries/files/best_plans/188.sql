/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.CreationDate>='2011-06-23 14:54:12'::timestamp AND pl.CreationDate<='2014-08-05 19:37:54'::timestamp AND ph.CreationDate>='2010-07-23 05:55:44'::timestamp;

