/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation<=737 AND u.UpVotes>=0 AND u.UpVotes<=51 AND u.CreationDate>='2010-12-23 03:50:33'::timestamp;

