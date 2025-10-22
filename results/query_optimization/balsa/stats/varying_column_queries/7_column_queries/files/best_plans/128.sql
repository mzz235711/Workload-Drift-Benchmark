/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-18 11:18:07'::timestamp AND p.Score>=0 AND p.Score<=16 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.FavoriteCount>=0;

