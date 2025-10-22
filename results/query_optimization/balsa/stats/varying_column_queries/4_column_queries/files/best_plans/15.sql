/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-18 17:29:06'::timestamp AND b.Date<='2014-09-02 00:16:42'::timestamp AND u.CreationDate>='2010-09-17 23:42:47'::timestamp AND u.CreationDate<='2014-09-12 02:49:02'::timestamp;

