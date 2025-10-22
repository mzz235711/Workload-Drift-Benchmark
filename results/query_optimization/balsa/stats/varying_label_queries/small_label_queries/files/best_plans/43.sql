/*+ HashJoin(c v ph)
 NestLoop(v ph)
 SeqScan(c)
 SeqScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=1 AND c.CreationDate>='2010-07-27 17:12:51'::timestamp AND ph.PostHistoryTypeId=2 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

