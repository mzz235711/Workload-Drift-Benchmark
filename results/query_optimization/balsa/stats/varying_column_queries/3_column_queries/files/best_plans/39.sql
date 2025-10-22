/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-08-28 22:16:31'::timestamp AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-14 00:00:00'::timestamp;

