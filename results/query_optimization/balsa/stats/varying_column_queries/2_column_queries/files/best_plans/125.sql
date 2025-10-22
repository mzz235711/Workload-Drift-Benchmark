/*+ HashJoin(c v ph)
 MergeJoin(v ph)
 IndexScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=2 AND v.VoteTypeId=2;

