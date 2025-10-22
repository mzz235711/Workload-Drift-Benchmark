/*+ HashJoin(c ph p)
 HashJoin(ph p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.Score=4 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND p.FavoriteCount<=31;

