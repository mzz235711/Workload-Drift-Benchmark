/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

