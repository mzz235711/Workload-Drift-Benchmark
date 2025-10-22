/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-23 16:30:54'::timestamp AND b.Date<='2014-09-13 03:05:31'::timestamp AND u.DownVotes>=0 AND u.CreationDate<='2014-07-18 18:55:20'::timestamp;

