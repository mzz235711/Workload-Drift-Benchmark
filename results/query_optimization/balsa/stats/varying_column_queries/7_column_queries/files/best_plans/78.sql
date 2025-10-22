/*+ HashJoin(v p c pl)
 HashJoin(p c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score>=-3 AND p.ViewCount<=2826 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-01 14:52:19'::timestamp AND pl.CreationDate>='2010-11-09 20:19:21'::timestamp AND v.BountyAmount<=50;

