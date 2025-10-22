/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=5 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

