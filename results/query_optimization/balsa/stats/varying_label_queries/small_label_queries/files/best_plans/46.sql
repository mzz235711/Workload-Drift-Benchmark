/*+ HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.CommentCount>=0 AND u.Views>=0 AND u.Views<=11 AND u.CreationDate>='2010-07-29 11:47:02'::timestamp AND u.CreationDate<='2014-08-22 05:17:25'::timestamp;

