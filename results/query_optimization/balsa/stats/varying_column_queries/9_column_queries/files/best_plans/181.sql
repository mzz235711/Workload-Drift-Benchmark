/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=10342 AND p.FavoriteCount>=0 AND p.FavoriteCount<=14 AND p.CreationDate>='2010-09-20 04:07:18'::timestamp AND p.CreationDate<='2014-09-11 18:38:03'::timestamp AND pl.CreationDate>='2011-03-04 11:46:01'::timestamp AND pl.CreationDate<='2014-08-28 17:14:42'::timestamp;

