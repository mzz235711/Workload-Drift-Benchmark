/*+ NestLoop(p u pl)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(pl)
 Leading(((p u) pl)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount<=4834 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount=0 AND p.CreationDate<='2014-09-12 16:40:29'::timestamp AND pl.LinkTypeId=1 AND u.DownVotes<=0;

