/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score>=-1 AND p.CommentCount>=0 AND p.CreationDate>='2010-11-08 16:13:13'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-22 23:34:52'::timestamp;

