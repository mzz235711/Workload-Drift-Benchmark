/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-26 19:33:42'::timestamp AND b.Date<='2014-09-08 18:42:27'::timestamp;

