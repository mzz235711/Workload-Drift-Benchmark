/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-26 19:23:41'::timestamp AND b.Date<='2014-09-10 19:36:34'::timestamp AND u.DownVotes>=0;

