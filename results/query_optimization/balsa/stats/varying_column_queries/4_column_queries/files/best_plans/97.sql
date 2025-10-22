/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-08-06 15:21:35'::timestamp AND c.CreationDate<='2014-09-12 12:36:03'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-06 16:00:12'::timestamp;

