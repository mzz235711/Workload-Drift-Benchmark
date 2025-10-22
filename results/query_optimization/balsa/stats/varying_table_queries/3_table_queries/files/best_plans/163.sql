/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-11 17:16:09'::timestamp AND p.PostTypeId=1;

