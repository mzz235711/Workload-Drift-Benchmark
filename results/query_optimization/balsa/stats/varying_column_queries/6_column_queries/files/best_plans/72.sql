/*+ MergeJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=2 AND p.Score>=-1 AND p.ViewCount<=4610 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5;

