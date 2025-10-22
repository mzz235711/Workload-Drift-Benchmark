/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2010-08-19 06:58:32'::timestamp AND c.CreationDate<='2014-09-07 16:55:12'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp;

