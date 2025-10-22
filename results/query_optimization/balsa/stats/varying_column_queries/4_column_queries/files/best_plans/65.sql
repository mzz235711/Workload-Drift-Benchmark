/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=3252 AND p.FavoriteCount<=2 AND u.DownVotes=0 AND u.CreationDate>='2010-07-20 19:10:58'::timestamp;

