/*+ HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading((((c p) pl) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.FavoriteCount<=23 AND u.Views>=0 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-09 18:39:46'::timestamp;

