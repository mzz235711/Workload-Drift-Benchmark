/*+ HashJoin(u b)
 IndexScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.Reputation<=2496 AND u.DownVotes<=0 AND u.UpVotes<=121 AND u.CreationDate<='2014-08-24 03:48:13'::timestamp;

