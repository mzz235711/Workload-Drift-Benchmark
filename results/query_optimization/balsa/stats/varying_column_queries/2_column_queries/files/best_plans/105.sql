/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-07 00:52:28'::timestamp AND b.Date<='2014-09-13 03:40:33'::timestamp;

