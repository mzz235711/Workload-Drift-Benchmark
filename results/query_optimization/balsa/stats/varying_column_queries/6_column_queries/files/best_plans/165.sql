/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate<='2014-08-29 17:53:36'::timestamp AND p.Score=7 AND p.ViewCount>=0 AND p.ViewCount<=24952 AND p.CommentCount<=17 AND p.CreationDate<='2014-08-29 16:00:56'::timestamp;

