/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.Score>=-3 AND p.CommentCount<=13 AND p.FavoriteCount<=9 AND p.CreationDate>='2010-09-23 10:59:13'::timestamp AND pl.LinkTypeId=1;

