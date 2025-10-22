/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 NestLoop(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=2 AND p.PostTypeId=1 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=1530 AND u.CreationDate>='2010-07-19 19:08:13'::timestamp;

