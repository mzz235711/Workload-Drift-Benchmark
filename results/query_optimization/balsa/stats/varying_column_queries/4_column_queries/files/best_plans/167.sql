/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-05 21:26:36'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=1;

