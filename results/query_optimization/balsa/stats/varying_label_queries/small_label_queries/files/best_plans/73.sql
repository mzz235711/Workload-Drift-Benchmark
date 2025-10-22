/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-12 11:43:30'::timestamp AND u.Views>=0 AND u.CreationDate<='2014-09-08 10:27:07'::timestamp;

