/*+ HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading(((c p) pl)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.ViewCount<=1489 AND p.CreationDate>='2010-07-19 19:24:18'::timestamp AND pl.CreationDate<='2014-04-25 20:21:54'::timestamp;

