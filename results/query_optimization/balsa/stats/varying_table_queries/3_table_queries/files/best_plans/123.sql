/*+ MergeJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score<=17 AND pl.LinkTypeId=1;

