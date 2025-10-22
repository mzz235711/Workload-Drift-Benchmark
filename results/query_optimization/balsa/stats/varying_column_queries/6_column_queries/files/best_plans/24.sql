/*+ MergeJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.Score<=15 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-27 15:35:14'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=3;

