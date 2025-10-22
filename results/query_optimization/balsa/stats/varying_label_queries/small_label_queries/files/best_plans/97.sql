/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND p.Score>=-1 AND p.AnswerCount<=3 AND p.CreationDate>='2010-07-19 20:25:08'::timestamp AND pl.LinkTypeId=1;

