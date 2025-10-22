/*+ HashJoin(v u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2251 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Views>=0 AND u.CreationDate>='2010-07-19 19:08:56'::timestamp;

