/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score>=-3 AND p.Score<=32;

