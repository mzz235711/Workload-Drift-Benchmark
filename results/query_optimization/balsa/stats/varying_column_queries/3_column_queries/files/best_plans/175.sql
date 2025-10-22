/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 IndexScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-21 17:52:02'::timestamp AND p.Score<=31 AND p.CommentCount>=0;

