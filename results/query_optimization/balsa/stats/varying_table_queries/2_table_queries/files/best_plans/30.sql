/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-20 01:49:07'::timestamp AND b.Date<='2014-08-24 03:32:29'::timestamp AND v.BountyAmount>=0;

