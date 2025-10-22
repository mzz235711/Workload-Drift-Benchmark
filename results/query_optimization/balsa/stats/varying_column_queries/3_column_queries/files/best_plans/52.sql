/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate>='2011-07-01 06:54:54'::timestamp AND ph.CreationDate<='2014-09-08 15:19:31'::timestamp;

