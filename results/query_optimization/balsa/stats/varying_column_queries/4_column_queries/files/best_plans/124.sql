/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score<=45 AND p.AnswerCount>=0 AND p.FavoriteCount<=65 AND pl.LinkTypeId=1;

