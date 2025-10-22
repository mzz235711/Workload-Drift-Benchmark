/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

