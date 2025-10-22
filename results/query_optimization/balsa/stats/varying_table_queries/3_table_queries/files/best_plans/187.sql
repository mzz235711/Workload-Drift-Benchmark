/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2009-03-03 22:14:44'::timestamp AND c.CreationDate<='2014-09-12 08:20:18'::timestamp AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=22 AND p.CreationDate>='2010-09-07 08:04:24'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-25 20:27:07'::timestamp;

