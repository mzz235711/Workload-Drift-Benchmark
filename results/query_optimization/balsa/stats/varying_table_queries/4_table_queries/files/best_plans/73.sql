/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=33 AND pl.CreationDate>='2010-10-19 15:39:26'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=350 AND u.CreationDate>='2010-11-06 01:23:30'::timestamp;

