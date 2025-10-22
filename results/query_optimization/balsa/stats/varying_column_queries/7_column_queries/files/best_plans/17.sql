/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-11 02:38:16'::timestamp AND pl.CreationDate>='2011-01-21 03:00:17'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate>='2010-07-19 19:48:20'::timestamp;

