/*+ NestLoop(p pl ph)
 HashJoin(p pl)
 SeqScan(p)
 IndexScan(pl)
 IndexScan(ph)
 Leading(((p pl) ph)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount=1 AND p.CommentCount<=13 AND ph.PostHistoryTypeId=3;

