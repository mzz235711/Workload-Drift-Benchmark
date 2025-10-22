/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-09-07 15:11:25'::timestamp AND c.CreationDate<='2014-09-11 13:51:01'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-09-08 13:12:40'::timestamp AND ph.CreationDate>='2011-01-18 19:55:40'::timestamp AND ph.CreationDate<='2014-08-20 02:37:46'::timestamp;

