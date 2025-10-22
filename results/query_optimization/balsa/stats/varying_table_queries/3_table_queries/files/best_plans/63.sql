/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-08-19 15:14:29'::timestamp AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=16 AND pl.CreationDate>='2010-12-08 10:43:56'::timestamp;

