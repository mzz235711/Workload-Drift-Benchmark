/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-09 13:53:43'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=32;

