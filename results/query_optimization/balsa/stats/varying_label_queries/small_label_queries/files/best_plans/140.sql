/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation<=1588 AND u.CreationDate<='2014-09-12 06:02:50'::timestamp;

