/*+ HashJoin(v pl c p)
 MergeJoin(pl c p)
 HashJoin(c p)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=2 AND p.PostTypeId=1 AND p.Score<=22 AND p.ViewCount>=0 AND pl.LinkTypeId=1;

