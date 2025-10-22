/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score>=0 AND p.Score<=14 AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND u.UpVotes<=29 AND u.CreationDate<='2014-09-10 19:25:03'::timestamp;

