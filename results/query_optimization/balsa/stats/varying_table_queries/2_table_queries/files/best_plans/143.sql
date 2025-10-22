/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.CreationDate>='2010-07-24 20:15:20'::timestamp AND ph.CreationDate<='2014-08-13 15:13:20'::timestamp;

