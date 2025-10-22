/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-22 05:13:18'::timestamp AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.UpVotes<=3;

