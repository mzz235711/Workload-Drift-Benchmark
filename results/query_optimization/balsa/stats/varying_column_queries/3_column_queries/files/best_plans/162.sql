/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-09-02 04:34:05'::timestamp AND b.Date<='2014-08-28 06:18:00'::timestamp AND u.CreationDate>='2011-05-25 04:30:01'::timestamp;

