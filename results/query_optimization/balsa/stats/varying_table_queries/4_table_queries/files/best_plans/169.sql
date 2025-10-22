/*+ HashJoin(v pl c p)
 HashJoin(pl c p)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.CommentCount>=0;

