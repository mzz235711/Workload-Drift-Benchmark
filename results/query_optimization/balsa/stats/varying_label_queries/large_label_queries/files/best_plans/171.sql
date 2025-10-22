/*+ HashJoin(c v pl p)
 HashJoin(c v pl)
 HashJoin(v pl)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(p)
 Leading(((c (v pl)) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.ViewCount>=0 AND pl.LinkTypeId=1;

