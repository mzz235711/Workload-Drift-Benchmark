/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

