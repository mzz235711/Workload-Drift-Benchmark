/*+ HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((v ((c p) pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate>='2010-08-19 10:33:16'::timestamp AND c.CreationDate<='2014-08-29 00:08:07'::timestamp AND p.Score<=16 AND p.ViewCount<=6436 AND p.CommentCount>=0 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND pl.CreationDate<='2014-06-24 15:31:05'::timestamp AND v.VoteTypeId=2;

