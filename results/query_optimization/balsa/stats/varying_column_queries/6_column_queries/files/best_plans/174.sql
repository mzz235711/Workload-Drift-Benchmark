/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.FavoriteCount=0 AND pl.CreationDate<='2014-06-09 23:20:11'::timestamp AND u.Reputation>=1 AND u.UpVotes=0 AND u.CreationDate>='2010-07-21 20:21:20'::timestamp AND u.CreationDate<='2014-08-15 18:11:24'::timestamp;

