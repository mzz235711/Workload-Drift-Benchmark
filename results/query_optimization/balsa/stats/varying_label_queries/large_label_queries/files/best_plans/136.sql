/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-08-19 10:44:24'::timestamp AND c.CreationDate<='2014-09-08 06:56:53'::timestamp AND ph.PostHistoryTypeId=5;

