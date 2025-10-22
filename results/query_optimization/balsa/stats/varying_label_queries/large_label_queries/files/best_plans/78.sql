/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-09-30 08:08:11'::timestamp AND ph.CreationDate<='2014-08-19 11:35:11'::timestamp;

