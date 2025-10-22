/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score<=15 AND p.CommentCount<=15 AND p.FavoriteCount>=0 AND p.FavoriteCount<=12;

