/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score<=29 AND p.ViewCount>=0 AND p.ViewCount<=13453 AND pl.CreationDate>='2011-01-03 15:39:49'::timestamp AND pl.CreationDate<='2014-09-09 11:19:45'::timestamp AND u.CreationDate>='2010-09-03 08:36:45'::timestamp;

