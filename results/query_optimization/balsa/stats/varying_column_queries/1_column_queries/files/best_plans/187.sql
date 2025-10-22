/*+ HashJoin(c ph)
 IndexScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.CreationDate<='2014-08-13 08:24:17'::timestamp;

