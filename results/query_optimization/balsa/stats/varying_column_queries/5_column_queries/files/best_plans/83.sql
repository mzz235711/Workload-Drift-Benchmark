/*+ HashJoin(pl p c)
 HashJoin(pl p)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(c)
 Leading(((pl p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=1 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2599 AND p.AnswerCount>=0;

