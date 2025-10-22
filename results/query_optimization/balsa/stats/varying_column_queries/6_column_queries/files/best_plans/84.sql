/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.CreationDate>='2010-12-23 16:59:38'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-31 23:53:54'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=150;

