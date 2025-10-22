/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-19 22:04:06'::timestamp AND u.Views>=0 AND u.Views<=26 AND u.CreationDate<='2014-09-08 18:52:13'::timestamp;

