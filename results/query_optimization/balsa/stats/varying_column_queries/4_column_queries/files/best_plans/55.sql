/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-03 00:45:11'::timestamp AND b.Date<='2014-09-03 10:32:14'::timestamp AND u.UpVotes>=0 AND u.CreationDate<='2014-08-31 21:13:51'::timestamp;

