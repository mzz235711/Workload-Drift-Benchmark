/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-05 12:51:34'::timestamp AND u.Reputation<=197 AND u.Views<=101 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-08-06 17:56:31'::timestamp;

