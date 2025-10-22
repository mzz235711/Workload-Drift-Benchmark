/*+ HashJoin(u b)
 IndexScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-11 13:50:04'::timestamp AND u.Views>=0 AND u.Views<=16 AND u.CreationDate>='2011-07-08 22:37:15'::timestamp AND u.CreationDate<='2014-09-12 17:26:43'::timestamp;

