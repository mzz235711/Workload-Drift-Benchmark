/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-29 02:45:20'::timestamp AND c.CreationDate<='2014-09-12 04:24:41'::timestamp AND ph.CreationDate<='2014-09-11 17:44:12'::timestamp;

