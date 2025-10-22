/*+ HashJoin(c u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (u (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate<='2014-09-02 19:59:00'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CreationDate>='2010-08-19 10:29:27'::timestamp AND p.CreationDate<='2014-09-08 12:37:18'::timestamp AND pl.LinkTypeId=1;

