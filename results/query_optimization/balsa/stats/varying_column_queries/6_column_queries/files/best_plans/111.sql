/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate<='2014-09-07 14:31:35'::timestamp AND p.Score>=-2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=16 AND p.CreationDate<='2014-09-10 20:19:59'::timestamp;

