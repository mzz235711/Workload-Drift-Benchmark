/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=668 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND u.Reputation>=1 AND u.Reputation<=279 AND u.Views>=0;

