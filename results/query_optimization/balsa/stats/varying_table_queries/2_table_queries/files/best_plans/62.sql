/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-20 19:57:27'::timestamp AND b.Date<='2014-08-21 15:20:12'::timestamp AND u.Reputation>=1 AND u.Reputation<=270 AND u.Views>=0 AND u.Views<=14;

