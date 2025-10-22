/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-21 12:35:50'::timestamp AND c.CreationDate<='2014-09-13 20:54:31'::timestamp AND ph.CreationDate>='2011-02-03 20:23:39'::timestamp AND ph.CreationDate<='2014-09-05 21:20:56'::timestamp;

