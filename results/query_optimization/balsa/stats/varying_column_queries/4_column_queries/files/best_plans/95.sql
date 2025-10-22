/*+ HashJoin(u pl p)
 MergeJoin(pl p)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount<=2064 AND p.FavoriteCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

