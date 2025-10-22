/*+ HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(c)
 IndexScan(p)
 IndexScan(pl)
 Leading((v ((c p) pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score=3 AND p.CommentCount>=0 AND p.CommentCount<=13;

