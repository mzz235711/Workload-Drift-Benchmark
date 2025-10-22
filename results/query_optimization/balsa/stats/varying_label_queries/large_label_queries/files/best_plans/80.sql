/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-25 19:56:22'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-01-07 17:01:57'::timestamp AND pl.CreationDate<='2014-06-23 18:02:29'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

