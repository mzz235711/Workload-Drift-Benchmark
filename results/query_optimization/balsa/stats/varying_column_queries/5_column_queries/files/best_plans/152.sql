/*+ HashJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.PostTypeId=2 AND p.CommentCount>=0 AND p.CommentCount<=9 AND u.Views>=0 AND u.CreationDate<='2014-08-06 08:21:49'::timestamp;

