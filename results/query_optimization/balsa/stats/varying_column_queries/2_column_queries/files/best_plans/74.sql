/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-20 03:54:08'::timestamp AND b.Date<='2014-08-21 11:26:28'::timestamp;

