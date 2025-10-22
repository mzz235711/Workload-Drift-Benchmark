/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=20 AND p.CreationDate<='2014-09-05 21:11:22'::timestamp AND u.Views>=0 AND u.CreationDate<='2014-09-01 08:18:14'::timestamp;

