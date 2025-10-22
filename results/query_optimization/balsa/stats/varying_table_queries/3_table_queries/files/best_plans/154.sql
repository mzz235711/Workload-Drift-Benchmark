/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=3 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND pl.LinkTypeId=3;

