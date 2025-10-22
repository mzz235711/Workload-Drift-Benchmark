/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-20 16:03:44'::timestamp AND p.ViewCount<=12626 AND p.CommentCount<=11 AND p.CreationDate>='2010-09-13 21:04:03'::timestamp;

