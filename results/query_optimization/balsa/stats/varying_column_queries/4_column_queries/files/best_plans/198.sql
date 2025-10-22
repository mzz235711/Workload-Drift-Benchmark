/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-19 22:44:06'::timestamp AND b.Date<='2014-09-11 09:55:58'::timestamp AND u.DownVotes<=1 AND u.CreationDate>='2012-06-06 11:54:36'::timestamp;

