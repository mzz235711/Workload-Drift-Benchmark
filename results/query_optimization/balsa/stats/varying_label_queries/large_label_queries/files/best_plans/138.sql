/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-19 19:39:10'::timestamp AND v.CreationDate<='2014-09-07 00:00:00'::timestamp;

