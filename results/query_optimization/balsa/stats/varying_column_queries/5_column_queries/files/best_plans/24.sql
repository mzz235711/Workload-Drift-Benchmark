/*+ HashJoin(v ph pl c)
 HashJoin(ph pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (ph (pl c)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-08-06 03:08:39'::timestamp AND c.CreationDate<='2014-09-09 06:57:25'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=3;

