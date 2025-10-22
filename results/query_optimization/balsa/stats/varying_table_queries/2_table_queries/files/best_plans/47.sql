/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=1 AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-09-13 18:44:31'::timestamp;

