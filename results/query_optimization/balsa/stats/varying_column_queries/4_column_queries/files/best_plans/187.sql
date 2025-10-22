/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-19 22:39:45'::timestamp AND c.CreationDate<='2014-09-13 17:59:56'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-09-19 20:09:26'::timestamp;

