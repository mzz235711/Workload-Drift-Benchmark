/*+ MergeJoin(u p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-06 22:46:35'::timestamp AND pl.LinkTypeId=1 AND u.Views<=23 AND u.UpVotes>=0;

