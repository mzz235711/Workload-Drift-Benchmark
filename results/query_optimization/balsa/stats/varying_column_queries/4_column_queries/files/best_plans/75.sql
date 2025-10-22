/*+ HashJoin(c pl p v)
 HashJoin(c pl p)
 HashJoin(c pl)
 IndexScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((((c pl) p) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=0 AND p.ViewCount>=0 AND p.ViewCount<=7960 AND pl.LinkTypeId=1;

