/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-19 19:39:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=262 AND u.DownVotes<=0;

