/*+ HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-20 14:21:37'::timestamp AND pl.LinkTypeId=1 AND u.Views>=0 AND u.Views<=51;

