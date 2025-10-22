/*+ HashJoin(p c v pl)
 HashJoin(c v pl)
 HashJoin(v pl)
 SeqScan(p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(pl)
 Leading((p (c (v pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.FavoriteCount<=2 AND p.CreationDate<='2014-09-05 08:42:07'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100;

