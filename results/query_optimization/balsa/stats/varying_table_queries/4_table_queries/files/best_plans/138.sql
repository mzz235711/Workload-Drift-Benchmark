/*+ HashJoin(v pl c p)
 HashJoin(pl c p)
 MergeJoin(c p)
 SeqScan(v)
 IndexScan(pl)
 IndexScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=0 AND c.CreationDate<='2014-09-11 02:56:02'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND pl.CreationDate<='2014-08-31 16:28:08'::timestamp;

