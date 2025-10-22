/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-19 19:15:52'::timestamp AND c.CreationDate<='2014-09-10 10:37:26'::timestamp;

