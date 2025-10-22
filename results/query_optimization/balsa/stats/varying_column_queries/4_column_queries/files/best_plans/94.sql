/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-28 21:08:55'::timestamp AND b.Date<='2014-09-11 14:28:20'::timestamp AND u.CreationDate>='2010-08-19 15:01:20'::timestamp AND u.CreationDate<='2014-08-28 18:26:33'::timestamp;

