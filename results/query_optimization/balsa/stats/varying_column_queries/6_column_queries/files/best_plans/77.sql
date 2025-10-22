/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-19 20:03:31'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=8147 AND p.CreationDate<='2014-08-26 13:23:31'::timestamp AND pl.CreationDate>='2011-10-17 05:21:10'::timestamp AND pl.CreationDate<='2014-09-04 13:26:44'::timestamp;

