/*+ MergeJoin(u b)
 IndexScan(u)
 IndexScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.CreationDate>='2010-08-09 00:24:26'::timestamp;

