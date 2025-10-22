/*+ HashJoin(v ph c)
 HashJoin(v ph)
 IndexScan(v)
 IndexScan(ph)
 IndexScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-06 04:10:51'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-12-14 05:45:34'::timestamp;

