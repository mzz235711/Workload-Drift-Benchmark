/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=47 AND p.ViewCount>=0 AND p.CommentCount<=17 AND p.FavoriteCount>=0 AND p.FavoriteCount<=24 AND u.CreationDate<='2014-09-03 13:37:38'::timestamp;

