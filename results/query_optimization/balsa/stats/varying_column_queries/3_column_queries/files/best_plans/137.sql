/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-19 19:38:30'::timestamp AND c.CreationDate<='2014-08-26 08:48:58'::timestamp AND ph.PostHistoryTypeId=1;

