/*+ NestLoop(u p pl)
 NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 IndexScan(pl)
 Leading(((u p) pl)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=23545 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount=1 AND pl.CreationDate>='2010-09-17 06:40:34'::timestamp AND pl.CreationDate<='2014-08-19 14:48:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=1969 AND u.Views=2 AND u.DownVotes=0 AND u.CreationDate<='2014-08-27 09:50:08'::timestamp;

