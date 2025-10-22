/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.Score<=33 AND p.AnswerCount<=4 AND p.CommentCount<=20 AND p.FavoriteCount<=7;

