/*+ HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-10-11 17:17:26'::timestamp AND ph.CreationDate<='2014-06-18 15:46:25'::timestamp;

