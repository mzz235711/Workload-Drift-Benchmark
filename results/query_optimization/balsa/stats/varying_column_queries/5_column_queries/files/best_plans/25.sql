/*+ HashJoin(ph c)
 SeqScan(ph)
 SeqScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=1 AND c.CreationDate>='2010-08-09 17:13:21'::timestamp AND c.CreationDate<='2014-09-13 21:09:00'::timestamp AND ph.CreationDate>='2010-08-30 18:42:30'::timestamp AND ph.CreationDate<='2014-09-10 07:50:32'::timestamp;

