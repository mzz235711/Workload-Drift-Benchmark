/*+ HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=1 AND c.CreationDate>='2010-07-21 12:39:58'::timestamp AND c.CreationDate<='2014-09-11 22:27:27'::timestamp AND ph.CreationDate<='2014-09-01 20:42:55'::timestamp;

