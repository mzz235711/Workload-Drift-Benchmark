/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-27 15:48:44'::timestamp AND b.Date<='2014-09-11 02:19:16'::timestamp AND u.Reputation>=1 AND u.Reputation<=151 AND u.Views>=0;

