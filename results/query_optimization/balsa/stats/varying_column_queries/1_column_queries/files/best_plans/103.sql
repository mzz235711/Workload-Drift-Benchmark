/*+ MergeJoin(u b)
 IndexScan(u)
 IndexScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Views<=29;

