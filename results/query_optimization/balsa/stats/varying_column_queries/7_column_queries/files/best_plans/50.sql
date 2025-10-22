/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score<=22 AND p.ViewCount<=4902 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND pl.CreationDate<='2014-08-13 20:59:14'::timestamp AND ph.CreationDate>='2010-07-23 05:55:44'::timestamp AND ph.CreationDate<='2014-09-08 21:14:55'::timestamp;

