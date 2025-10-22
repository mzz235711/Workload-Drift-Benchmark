/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate>='2010-08-06 14:01:57'::timestamp AND ph.CreationDate<='2014-09-13 14:52:22'::timestamp;

