/*+ HashJoin(u v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-09-16 12:31:55'::timestamp AND p.PostTypeId=1 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp;

