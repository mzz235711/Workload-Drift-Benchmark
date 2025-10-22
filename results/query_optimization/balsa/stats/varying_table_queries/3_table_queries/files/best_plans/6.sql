/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score=4 AND p.CommentCount>=0 AND p.FavoriteCount<=24 AND pl.CreationDate>='2011-09-06 21:40:25'::timestamp AND pl.CreationDate<='2014-08-13 03:42:04'::timestamp;

