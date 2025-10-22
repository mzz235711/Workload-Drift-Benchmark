/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-2 AND p.ViewCount<=8624 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.CreationDate<='2014-09-05 18:12:16'::timestamp AND pl.LinkTypeId=1 AND u.Views<=94 AND u.CreationDate>='2010-09-16 13:03:52'::timestamp AND u.CreationDate<='2014-09-09 01:43:16'::timestamp;

