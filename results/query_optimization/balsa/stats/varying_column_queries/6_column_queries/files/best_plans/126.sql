/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=19 AND p.ViewCount<=10802 AND pl.CreationDate>='2011-01-07 17:01:57'::timestamp AND pl.CreationDate<='2014-05-11 17:29:30'::timestamp;

