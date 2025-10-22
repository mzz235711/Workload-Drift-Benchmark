/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-08 16:14:19'::timestamp AND b.Date<='2014-09-10 13:54:47'::timestamp AND u.Views>=0;

