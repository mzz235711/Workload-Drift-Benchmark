/*+ HashJoin(v c)
 SeqScan(v)
 IndexScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2010-08-01 23:13:24'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

