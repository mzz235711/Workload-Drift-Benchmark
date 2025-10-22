/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-12-09 01:22:23'::timestamp AND u.CreationDate>='2011-01-04 12:53:58'::timestamp AND u.CreationDate<='2014-09-06 17:48:56'::timestamp;

