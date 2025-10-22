/*+ HashJoin(p u pl)
 NestLoop(p u)
 SeqScan(p)
 IndexScan(u)
 SeqScan(pl)
 Leading(((p u) pl)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score=1 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount=0 AND pl.LinkTypeId=1 AND u.Reputation<=193 AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=1243 AND u.CreationDate>='2011-01-13 20:49:25'::timestamp;

