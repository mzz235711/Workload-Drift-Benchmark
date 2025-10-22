/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.CommentCount=2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-09-19 09:28:15'::timestamp;

