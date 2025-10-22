/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate<='2014-09-12 12:11:24'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-11-28 08:29:02'::timestamp AND ph.CreationDate<='2014-08-10 09:02:58'::timestamp;

