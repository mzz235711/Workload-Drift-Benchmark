/*+ NestLoop(v b)
 SeqScan(v)
 IndexScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50;

