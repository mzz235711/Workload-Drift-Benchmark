/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-20 14:39:11'::timestamp AND b.Date<='2014-08-29 18:20:49'::timestamp AND v.CreationDate>='2010-07-23 00:00:00'::timestamp;

