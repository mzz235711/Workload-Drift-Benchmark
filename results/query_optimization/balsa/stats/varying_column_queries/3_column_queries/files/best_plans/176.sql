/*+ NestLoop(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date='2011-08-29 04:11:14'::timestamp AND u.DownVotes<=2 AND u.CreationDate>='2010-07-19 19:03:57'::timestamp;

