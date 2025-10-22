/*+ HashJoin(ph c p)
 MergeJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.ViewCount>=0 AND p.ViewCount<=939 AND p.CommentCount<=16;

