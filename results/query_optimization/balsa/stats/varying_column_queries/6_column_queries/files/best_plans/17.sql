/*+ HashJoin(c u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (u (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND pl.CreationDate>='2011-03-14 11:35:52'::timestamp AND pl.CreationDate<='2014-08-13 18:22:13'::timestamp AND u.Reputation<=549 AND u.Views<=24 AND u.CreationDate>='2010-08-31 11:22:52'::timestamp;

