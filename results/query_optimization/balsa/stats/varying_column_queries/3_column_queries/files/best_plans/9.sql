/*+ MergeJoin(u pl p)
 HashJoin(pl p)
 IndexScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=1988 AND u.UpVotes>=0;

