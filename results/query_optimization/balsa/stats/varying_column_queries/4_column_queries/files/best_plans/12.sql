/*+ MergeJoin(u ph c p pl)
 HashJoin(ph c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (ph (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.ViewCount>=0 AND p.ViewCount<=3484 AND p.CreationDate>='2010-08-31 16:32:21'::timestamp AND ph.PostHistoryTypeId=2;

