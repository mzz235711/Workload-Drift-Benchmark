/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-23 18:37:46'::timestamp AND c.CreationDate<='2014-09-12 00:20:43'::timestamp AND p.PostTypeId=1 AND p.CommentCount<=21 AND p.CreationDate<='2014-09-11 23:26:14'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-04-12 17:33:03'::timestamp;

