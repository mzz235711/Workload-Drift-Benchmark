/*+ HashJoin(c ph)
 IndexScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.PostHistoryTypeId=5;

