/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-09-13 13:05:12'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-07-22 10:04:38'::timestamp AND ph.CreationDate<='2014-08-27 18:17:17'::timestamp;

