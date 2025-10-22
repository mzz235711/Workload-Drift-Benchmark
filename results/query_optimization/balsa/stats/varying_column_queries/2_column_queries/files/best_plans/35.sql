/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.DownVotes<=2 AND u.CreationDate>='2010-07-19 19:04:37'::timestamp;

