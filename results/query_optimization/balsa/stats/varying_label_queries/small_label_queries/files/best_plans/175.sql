/*+ HashJoin(c p v pl)
 HashJoin(v pl)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(v)
 SeqScan(pl)
 Leading(((c p) (v pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=0 AND p.ViewCount>=0 AND p.CommentCount<=15 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-20 16:27:08'::timestamp AND pl.LinkTypeId=1;

