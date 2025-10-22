/*+ HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((v ((c p) pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.CommentCount>=0 AND p.CommentCount<=11 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

