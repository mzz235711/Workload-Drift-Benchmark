/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-27 18:19:06'::timestamp AND c.CreationDate<='2014-09-13 23:27:25'::timestamp AND pl.LinkTypeId=1 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

