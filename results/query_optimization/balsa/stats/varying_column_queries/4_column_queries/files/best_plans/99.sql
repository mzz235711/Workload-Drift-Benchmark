/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.UpVotes>=0 AND u.UpVotes<=497 AND u.CreationDate>='2010-08-10 08:19:24'::timestamp AND u.CreationDate<='2014-08-29 01:59:12'::timestamp;

