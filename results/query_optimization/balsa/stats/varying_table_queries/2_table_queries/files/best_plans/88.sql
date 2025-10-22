/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=7257 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND u.Reputation<=185 AND u.Views>=0 AND u.DownVotes<=49;

