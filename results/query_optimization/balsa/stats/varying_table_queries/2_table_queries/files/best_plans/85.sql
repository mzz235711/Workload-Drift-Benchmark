/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.DownVotes<=2 AND u.CreationDate>='2010-08-03 22:26:27'::timestamp AND u.CreationDate<='2014-09-07 18:58:36'::timestamp;

