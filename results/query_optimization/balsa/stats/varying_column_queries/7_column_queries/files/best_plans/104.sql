/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-12 19:47:14'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-13 15:25:27'::timestamp AND pl.CreationDate<='2014-08-20 14:01:57'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

