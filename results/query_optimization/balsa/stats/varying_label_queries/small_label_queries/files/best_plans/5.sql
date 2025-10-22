/*+ HashJoin(b u)
 IndexScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.Reputation<=814 AND u.Views>=0 AND u.Views<=80 AND u.DownVotes>=0 AND u.UpVotes<=123;

