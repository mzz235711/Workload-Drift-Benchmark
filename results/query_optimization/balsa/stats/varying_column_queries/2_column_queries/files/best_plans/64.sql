/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.FavoriteCount=0 AND pl.CreationDate>='2010-08-16 18:27:32'::timestamp;

