/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate>='2011-02-09 11:10:17'::timestamp AND ph.CreationDate<='2014-08-15 17:53:43'::timestamp;

