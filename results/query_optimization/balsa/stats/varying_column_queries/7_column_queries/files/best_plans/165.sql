/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount>=0 AND p.AnswerCount<=3 AND p.FavoriteCount<=19 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-06-05 12:00:28'::timestamp AND pl.CreationDate<='2014-08-14 12:36:34'::timestamp AND ph.PostHistoryTypeId=1;

