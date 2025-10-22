/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.CreationDate>='2010-10-22 22:40:35'::timestamp AND u.CreationDate<='2014-07-29 14:59:28'::timestamp;

