/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.CommentCount>=0 AND p.FavoriteCount<=8 AND p.CreationDate>='2010-07-25 15:32:59'::timestamp AND pl.CreationDate<='2014-09-01 16:31:49'::timestamp AND u.CreationDate<='2014-09-11 13:29:18'::timestamp;

