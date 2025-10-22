/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND c.CreationDate>='2010-08-19 07:08:13'::timestamp AND c.CreationDate<='2014-09-11 20:58:35'::timestamp AND p.Score>=-1 AND p.Score<=29 AND p.CreationDate>='2010-08-20 08:31:16'::timestamp AND p.CreationDate<='2014-08-26 07:56:06'::timestamp AND pl.LinkTypeId=1 AND u.Views>=0 AND u.Views<=17;

