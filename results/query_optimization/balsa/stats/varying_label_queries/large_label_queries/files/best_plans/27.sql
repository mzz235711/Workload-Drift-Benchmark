/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=1 AND p.Score>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CommentCount<=17 AND pl.LinkTypeId=1;

