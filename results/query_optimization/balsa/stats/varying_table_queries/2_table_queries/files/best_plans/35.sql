/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score>=-4 AND p.Score<=17 AND p.AnswerCount<=2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=95;

