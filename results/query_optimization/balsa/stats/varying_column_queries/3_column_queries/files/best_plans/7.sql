/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-08-19 17:13:03'::timestamp AND c.CreationDate<='2014-09-12 00:20:43'::timestamp AND ph.CreationDate>='2010-09-16 12:08:07'::timestamp;

