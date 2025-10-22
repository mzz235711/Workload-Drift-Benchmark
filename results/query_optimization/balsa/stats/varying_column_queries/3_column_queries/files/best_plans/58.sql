/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation=1 AND u.CreationDate>='2010-08-04 08:57:32'::timestamp AND u.CreationDate<='2014-08-30 06:19:34'::timestamp;

