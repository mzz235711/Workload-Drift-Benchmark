/*+ HashJoin(c ph)
 IndexScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.CreationDate>='2010-08-16 14:38:47'::timestamp;

