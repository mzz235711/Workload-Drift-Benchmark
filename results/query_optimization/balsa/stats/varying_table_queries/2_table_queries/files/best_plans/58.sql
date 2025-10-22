/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-08-09 08:32:42'::timestamp AND c.CreationDate<='2014-09-11 22:16:26'::timestamp AND ph.PostHistoryTypeId=2;

