/*+ HashJoin(c v)
 SeqScan(c)
 IndexScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate<='2014-09-13 18:23:37'::timestamp AND v.CreationDate>='2010-07-21 00:00:00'::timestamp;

