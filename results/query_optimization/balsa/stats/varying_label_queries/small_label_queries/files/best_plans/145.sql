/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.Reputation<=4767 AND u.UpVotes>=0 AND u.UpVotes<=18 AND u.CreationDate>='2010-11-24 23:59:25'::timestamp;

