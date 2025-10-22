/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-03 10:32:14'::timestamp AND u.Reputation>=1 AND u.Reputation<=4128 AND u.DownVotes>=0 AND u.DownVotes<=9;

