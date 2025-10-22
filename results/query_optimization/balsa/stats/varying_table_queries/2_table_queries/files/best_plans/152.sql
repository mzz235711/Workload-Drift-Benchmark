/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-09-01 08:38:14'::timestamp AND v.BountyAmount<=50;

