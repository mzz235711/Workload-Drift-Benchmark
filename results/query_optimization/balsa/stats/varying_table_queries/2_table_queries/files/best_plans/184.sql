/*+ HashJoin(c v)
 SeqScan(c)
 IndexScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

