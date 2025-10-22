/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-07-26 07:06:39'::timestamp;

