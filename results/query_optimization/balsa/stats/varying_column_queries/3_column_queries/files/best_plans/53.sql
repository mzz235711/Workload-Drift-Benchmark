/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.UpVotes>=0 AND u.CreationDate>='2010-07-27 18:01:17'::timestamp AND u.CreationDate<='2014-08-18 18:01:28'::timestamp;

