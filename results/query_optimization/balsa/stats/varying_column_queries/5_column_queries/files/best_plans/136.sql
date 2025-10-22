/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score>=-2 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate='2012-08-15 11:11:31'::timestamp;

