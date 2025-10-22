/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.PostTypeId=2 AND p.CreationDate>='2010-08-02 04:40:22'::timestamp AND p.CreationDate<='2014-09-03 23:05:58'::timestamp AND u.Reputation<=8814;

