/*+ HashJoin(ph c v p pl)
 HashJoin(c v p pl)
 HashJoin(v p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph (c (v (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.CommentCount>=0;

