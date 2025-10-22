/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND p.Score<=22 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=21 AND p.FavoriteCount<=22;

