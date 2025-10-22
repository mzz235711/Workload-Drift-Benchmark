/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.CreationDate>='2011-05-10 17:02:08'::timestamp AND ph.CreationDate<='2014-09-08 13:38:45'::timestamp;

