/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score<=21 AND p.ViewCount>=0 AND p.ViewCount<=1687 AND p.CreationDate>='2010-10-19 14:27:51'::timestamp AND pl.LinkTypeId=1;

