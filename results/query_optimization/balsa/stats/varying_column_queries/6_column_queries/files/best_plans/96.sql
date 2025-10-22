/*+ MergeJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=1 AND c.CreationDate>='2010-07-29 15:12:12'::timestamp AND c.CreationDate<='2014-08-31 10:50:03'::timestamp AND ph.PostHistoryTypeId=3 AND v.BountyAmount>=0 AND v.BountyAmount<=100;

