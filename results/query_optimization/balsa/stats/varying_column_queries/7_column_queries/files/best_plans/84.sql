/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=1 AND c.CreationDate>='2010-08-10 19:54:25'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=21588 AND p.CreationDate>='2010-07-23 13:58:07'::timestamp AND p.CreationDate<='2014-08-26 03:01:33'::timestamp AND pl.CreationDate<='2014-09-05 11:19:00'::timestamp;

