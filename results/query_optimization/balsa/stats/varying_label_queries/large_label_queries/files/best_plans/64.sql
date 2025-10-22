/*+ HashJoin(c ph p)
 HashJoin(ph p)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=22 AND p.FavoriteCount>=0 AND p.FavoriteCount<=9 AND p.CreationDate>='2010-07-19 20:34:46'::timestamp;

