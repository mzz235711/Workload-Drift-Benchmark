/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-11 12:33:20'::timestamp AND u.Reputation<=475 AND u.Views>=0 AND u.Views<=11 AND u.DownVotes<=19;

