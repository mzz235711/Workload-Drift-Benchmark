/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.CreationDate<='2014-09-08 06:43:11'::timestamp AND u.Views<=66 AND u.DownVotes>=0 AND u.CreationDate='2012-11-11 21:46:52'::timestamp;

