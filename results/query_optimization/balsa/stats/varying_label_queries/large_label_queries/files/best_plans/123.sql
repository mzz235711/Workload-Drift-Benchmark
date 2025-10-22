/*+ MergeJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=3 AND c.CreationDate>='2010-10-11 18:20:29'::timestamp AND c.CreationDate<='2014-09-06 15:10:14'::timestamp AND p.Score>=0 AND p.ViewCount>=0 AND p.ViewCount<=7536 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6;

