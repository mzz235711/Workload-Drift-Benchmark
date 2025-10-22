/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-27 09:13:47'::timestamp AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

