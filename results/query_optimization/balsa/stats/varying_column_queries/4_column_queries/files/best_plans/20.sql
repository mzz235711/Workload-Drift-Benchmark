/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-17 09:53:45'::timestamp AND b.Date<='2014-08-28 21:09:28'::timestamp AND u.Views>=0 AND u.Views<=5927;

