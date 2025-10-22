/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-10-12 20:02:07'::timestamp AND c.CreationDate<='2014-09-12 22:24:22'::timestamp AND p.ViewCount<=10520 AND pl.LinkTypeId=1;

