/*+ HashJoin(ph v c pl)
 HashJoin(c pl)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 Leading(((ph v) (c pl))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=2 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-22 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp;

