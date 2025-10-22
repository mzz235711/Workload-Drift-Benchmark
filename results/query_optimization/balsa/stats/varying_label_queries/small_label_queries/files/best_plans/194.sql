/*+ NestLoop(p pl ph)
 HashJoin(p pl)
 SeqScan(p)
 IndexScan(pl)
 IndexScan(ph)
 Leading(((p pl) ph)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.Score<=22 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount<=14 AND p.FavoriteCount=0 AND p.CreationDate<='2014-09-12 05:42:43'::timestamp AND ph.PostHistoryTypeId=4;

