/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-19 19:58:20'::timestamp AND c.CreationDate<='2014-09-10 09:02:56'::timestamp AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-20 13:54:04'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-05 18:08:48'::timestamp AND pl.CreationDate<='2014-07-01 08:09:51'::timestamp;

