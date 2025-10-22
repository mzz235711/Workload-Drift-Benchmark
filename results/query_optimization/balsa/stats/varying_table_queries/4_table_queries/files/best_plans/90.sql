/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate<='2014-09-07 21:47:22'::timestamp AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-19 21:29:37'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-09-03 15:35:02'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=2 AND u.UpVotes<=24 AND u.CreationDate>='2010-07-31 11:22:56'::timestamp AND u.CreationDate<='2014-09-04 23:39:57'::timestamp;

