/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=1 AND c.CreationDate>='2010-09-12 03:56:17'::timestamp AND c.CreationDate<='2014-09-12 02:14:44'::timestamp AND ph.PostHistoryTypeId=2;

