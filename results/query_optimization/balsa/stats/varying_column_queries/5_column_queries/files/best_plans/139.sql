/*+ HashJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.ViewCount<=2845 AND p.CommentCount<=17 AND p.CreationDate>='2010-08-05 15:27:49'::timestamp AND p.CreationDate<='2014-09-06 15:36:18'::timestamp AND u.DownVotes=0;

