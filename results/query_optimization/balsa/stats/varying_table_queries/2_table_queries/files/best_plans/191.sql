/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-19 22:09:06'::timestamp AND b.Date<='2014-09-09 07:25:40'::timestamp AND v.BountyAmount>=0;

