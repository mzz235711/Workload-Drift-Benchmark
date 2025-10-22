/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Views>=0 AND u.Views<=121 AND u.CreationDate<='2014-08-29 13:12:31'::timestamp;

