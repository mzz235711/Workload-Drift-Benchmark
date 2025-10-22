/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score>=-1 AND p.Score<=42 AND p.AnswerCount<=3 AND p.FavoriteCount>=0 AND p.FavoriteCount<=24 AND pl.LinkTypeId=1;

