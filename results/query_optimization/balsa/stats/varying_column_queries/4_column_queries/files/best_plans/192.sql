/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-27 13:38:44'::timestamp AND u.UpVotes<=38 AND u.CreationDate>='2010-09-05 23:52:44'::timestamp AND u.CreationDate<='2014-07-26 02:12:55'::timestamp;

