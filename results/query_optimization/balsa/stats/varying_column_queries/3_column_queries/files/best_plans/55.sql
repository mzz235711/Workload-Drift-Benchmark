/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 IndexScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.CommentCount<=12 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-11-09 20:20:10'::timestamp;

