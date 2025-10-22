/*+ HashJoin(c v ph)
 NestLoop(v ph)
 SeqScan(c)
 SeqScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2011-03-14 17:53:57'::timestamp AND ph.CreationDate<='2014-08-26 14:51:25'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp;

