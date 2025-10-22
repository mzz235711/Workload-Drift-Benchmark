/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-19 06:28:05'::timestamp AND p.CreationDate<='2014-09-10 22:11:03'::timestamp AND pl.CreationDate>='2010-11-20 07:22:34'::timestamp AND ph.PostHistoryTypeId=1;

