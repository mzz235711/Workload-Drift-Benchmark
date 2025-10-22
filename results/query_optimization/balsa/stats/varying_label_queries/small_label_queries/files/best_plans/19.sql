/*+ MergeJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=1 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2131 AND p.CreationDate<='2014-08-27 14:00:52'::timestamp AND pl.CreationDate>='2010-08-09 10:49:46'::timestamp;

