/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate>='2010-07-25 20:26:16'::timestamp AND p.CreationDate>='2010-07-29 11:25:13'::timestamp AND pl.CreationDate>='2011-06-24 16:26:57'::timestamp AND pl.CreationDate<='2014-05-17 07:30:03'::timestamp AND u.Views<=45 AND u.DownVotes<=1 AND u.UpVotes=0 AND u.CreationDate>='2010-11-10 01:31:03'::timestamp;

