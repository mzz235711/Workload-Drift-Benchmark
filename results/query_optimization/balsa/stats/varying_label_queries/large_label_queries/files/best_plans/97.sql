/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-20 08:45:52'::timestamp AND c.CreationDate<='2014-09-12 21:23:33'::timestamp AND ph.CreationDate<='2014-08-07 19:59:48'::timestamp;

