/*+ HashJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate>='2010-07-19 20:46:12'::timestamp AND c.CreationDate<='2014-09-07 01:21:47'::timestamp AND p.PostTypeId=1 AND p.Score<=16 AND pl.LinkTypeId=3;

