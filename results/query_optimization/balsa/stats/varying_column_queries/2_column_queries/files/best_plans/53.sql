/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-29 14:31:10'::timestamp AND c.CreationDate<='2014-09-06 15:27:33'::timestamp;

