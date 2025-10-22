/*+ MergeJoin(u pl v p)
 HashJoin(pl v p)
 HashJoin(v p)
 IndexScan(u)
 SeqScan(pl)
 SeqScan(v)
 IndexScan(p)
 Leading((u (pl (v p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate<='2014-06-26 20:25:42'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=250;

