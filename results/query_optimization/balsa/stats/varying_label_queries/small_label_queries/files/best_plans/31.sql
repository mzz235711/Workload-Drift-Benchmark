/*+ HashJoin(u b)
 IndexScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation<=222 AND u.Views>=0;

