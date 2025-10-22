/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount>=0 AND p.ViewCount<=14325 AND p.AnswerCount<=5 AND p.CreationDate>='2010-08-18 07:36:59'::timestamp AND ph.CreationDate<='2014-03-08 13:53:22'::timestamp;

