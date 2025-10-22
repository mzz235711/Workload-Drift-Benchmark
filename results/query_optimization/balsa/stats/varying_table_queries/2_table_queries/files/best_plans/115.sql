/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-20 11:59:13'::timestamp AND u.Views>=0 AND u.UpVotes<=30 AND u.CreationDate<='2014-07-28 00:42:50'::timestamp;

