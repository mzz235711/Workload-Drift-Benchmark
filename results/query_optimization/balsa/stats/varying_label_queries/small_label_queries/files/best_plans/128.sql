/*+ HashJoin(c v ph pl)
 HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(pl)
 Leading(((c (v ph)) pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-09 10:17:56'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=38;

