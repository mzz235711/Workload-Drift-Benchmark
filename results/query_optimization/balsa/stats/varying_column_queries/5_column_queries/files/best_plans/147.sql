/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount<=3100 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND pl.CreationDate<='2014-07-22 17:03:21'::timestamp;

