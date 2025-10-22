/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-26 14:39:12'::timestamp;

