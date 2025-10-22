/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-21 15:23:12'::timestamp;

