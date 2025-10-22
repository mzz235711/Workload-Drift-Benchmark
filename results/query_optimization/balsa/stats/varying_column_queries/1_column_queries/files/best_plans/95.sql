/*+ MergeJoin(u b)
 IndexScan(u)
 IndexScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-04 02:08:37'::timestamp;

