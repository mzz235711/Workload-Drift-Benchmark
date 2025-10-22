/*+ MergeJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.ViewCount<=11200 AND u.Reputation<=4767;

