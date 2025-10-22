/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount<=5220 AND p.AnswerCount>=0 AND p.CommentCount=1 AND p.FavoriteCount<=36 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=2;

