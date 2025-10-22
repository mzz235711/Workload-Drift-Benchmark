/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=15 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=16108 AND u.Views=0 AND u.DownVotes<=7 AND u.CreationDate>='2010-09-17 23:42:47'::timestamp;

