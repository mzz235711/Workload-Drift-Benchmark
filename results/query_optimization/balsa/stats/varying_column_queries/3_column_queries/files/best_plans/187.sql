/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.Reputation<=210 AND u.UpVotes<=2319;

