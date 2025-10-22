/*+ HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-11-13 14:00:03'::timestamp AND ph.CreationDate<='2014-06-06 22:14:45'::timestamp;

