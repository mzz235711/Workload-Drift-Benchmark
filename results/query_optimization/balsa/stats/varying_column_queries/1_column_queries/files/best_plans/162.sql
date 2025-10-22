/*+ HashJoin(v b)
 SeqScan(v)
 IndexScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-09-04 12:54:25'::timestamp;

