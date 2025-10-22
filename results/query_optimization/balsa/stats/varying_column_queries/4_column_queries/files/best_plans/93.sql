/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=1 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.FavoriteCount<=35;

