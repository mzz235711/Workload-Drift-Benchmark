/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.CreationDate>='2010-07-22 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

