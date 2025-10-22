/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-19 20:23:01'::timestamp AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-08-13 00:49:50'::timestamp;

