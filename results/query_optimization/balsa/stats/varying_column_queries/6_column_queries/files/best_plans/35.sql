/*+ HashJoin(ph p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount<=12 AND p.FavoriteCount=0 AND pl.CreationDate>='2011-01-09 00:52:24'::timestamp AND pl.CreationDate<='2014-07-23 18:52:24'::timestamp;

