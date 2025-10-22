/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND c.CreationDate<='2014-09-05 02:40:00'::timestamp AND p.PostTypeId=1 AND p.FavoriteCount<=11 AND p.CreationDate<='2014-08-27 06:07:22'::timestamp AND u.Reputation>=1;

