/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-08-04 17:43:38'::timestamp AND c.CreationDate<='2014-09-03 19:13:33'::timestamp AND ph.PostHistoryTypeId=2;

