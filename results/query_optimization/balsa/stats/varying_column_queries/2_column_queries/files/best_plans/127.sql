/*+ HashJoin(u v pl p)
 MergeJoin(v pl p)
 MergeJoin(pl p)
 SeqScan(u)
 IndexScan(v)
 SeqScan(pl)
 IndexScan(p)
 Leading((u (v (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Reputation>=1 AND u.Views<=91;

