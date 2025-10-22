/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount<=8 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND pl.CreationDate<='2014-08-07 08:07:59'::timestamp AND ph.CreationDate<='2014-09-09 20:55:41'::timestamp;

