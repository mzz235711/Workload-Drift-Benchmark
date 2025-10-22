/*+ HashJoin(u b)
 IndexScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-09 18:54:45'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=70;

