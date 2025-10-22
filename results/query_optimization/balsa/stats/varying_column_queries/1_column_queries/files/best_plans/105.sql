/*+ MergeJoin(u b)
 IndexScan(u)
 IndexScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-08-26 23:39:50'::timestamp;

