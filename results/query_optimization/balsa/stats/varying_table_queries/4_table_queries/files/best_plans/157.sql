/*+ HashJoin(c ph v pl)
 HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(pl)
 Leading(((c (ph v)) pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=2 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

