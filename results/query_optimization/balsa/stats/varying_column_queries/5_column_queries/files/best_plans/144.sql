/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.ViewCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2012-07-18 18:53:06'::timestamp AND pl.CreationDate<='2014-08-21 15:33:17'::timestamp;

