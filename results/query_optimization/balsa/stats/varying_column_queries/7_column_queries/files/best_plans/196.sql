/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate>='2010-07-28 15:21:55'::timestamp AND p.CreationDate>='2010-08-21 00:04:13'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-12-23 16:59:38'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.CreationDate>='2010-09-16 02:25:37'::timestamp;

