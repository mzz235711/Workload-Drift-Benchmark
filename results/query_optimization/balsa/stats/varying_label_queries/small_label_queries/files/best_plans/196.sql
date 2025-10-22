/*+ NestLoop(p pl ph)
 HashJoin(p pl)
 SeqScan(p)
 IndexScan(pl)
 IndexScan(ph)
 Leading(((p pl) ph)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount>=0 AND p.ViewCount<=1979 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-21 14:43:31'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-08-25 06:02:31'::timestamp AND pl.CreationDate<='2014-07-25 13:23:27'::timestamp AND ph.PostHistoryTypeId=1;

