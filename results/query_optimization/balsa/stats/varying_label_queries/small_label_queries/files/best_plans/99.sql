/*+ HashJoin(v b)
 IndexScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.CreationDate>='2010-07-21 00:00:00'::timestamp;

