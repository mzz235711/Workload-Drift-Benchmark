/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=2 AND c.CreationDate<='2014-08-30 18:51:22'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=9;

