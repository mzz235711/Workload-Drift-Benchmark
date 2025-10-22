/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND p.Score>=-1 AND p.Score<=192 AND p.ViewCount>=0 AND p.ViewCount<=3072 AND p.AnswerCount>=0 AND pl.CreationDate>='2010-09-20 04:14:54'::timestamp;

