/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate<='2014-09-11 19:18:57'::timestamp AND ph.PostHistoryTypeId=5;

