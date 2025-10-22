/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score<=13 AND p.ViewCount<=1398 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-21 08:19:36'::timestamp AND p.CreationDate<='2014-09-04 21:32:18'::timestamp AND pl.LinkTypeId=1;

