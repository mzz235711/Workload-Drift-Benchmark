/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND pl.CreationDate>='2011-02-13 19:30:44'::timestamp AND pl.CreationDate<='2014-09-06 15:24:08'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-09-08 13:02:29'::timestamp;

