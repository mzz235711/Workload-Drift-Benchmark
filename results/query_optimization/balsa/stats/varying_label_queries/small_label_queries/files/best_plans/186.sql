/*+ HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score>=-3 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND u.Reputation<=121 AND u.Views<=813 AND u.DownVotes>=0;

