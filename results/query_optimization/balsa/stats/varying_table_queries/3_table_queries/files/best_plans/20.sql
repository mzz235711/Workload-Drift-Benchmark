/*+ HashJoin(u p pl)
 MergeJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.FavoriteCount>=0 AND pl.LinkTypeId=1 AND u.Views>=0 AND u.Views<=83 AND u.CreationDate>='2011-03-08 13:16:00'::timestamp;

