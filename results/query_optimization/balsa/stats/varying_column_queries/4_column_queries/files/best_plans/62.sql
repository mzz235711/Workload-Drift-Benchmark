/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-1 AND p.AnswerCount<=35 AND p.CommentCount<=14 AND p.FavoriteCount>=0;

