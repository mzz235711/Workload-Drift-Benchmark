/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-06-16 21:59:53'::timestamp AND pl.CreationDate<='2014-08-08 04:46:39'::timestamp AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

