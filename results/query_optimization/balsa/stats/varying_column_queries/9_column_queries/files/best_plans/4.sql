/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-2 AND p.ViewCount>=0 AND p.ViewCount<=3942 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=15;

