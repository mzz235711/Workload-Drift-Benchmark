/*+ NestLoop(p u pl c)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 SeqScan(pl)
 IndexScan(c)
 Leading((((p u) pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=1 AND c.CreationDate>='2010-08-11 10:47:42'::timestamp AND c.CreationDate<='2014-09-04 20:18:04'::timestamp AND p.Score<=108 AND p.AnswerCount=0 AND p.CommentCount>=0 AND p.CommentCount<=8 AND p.FavoriteCount>=0 AND p.FavoriteCount<=29 AND pl.CreationDate>='2011-04-28 19:12:57'::timestamp AND u.Reputation>=1 AND u.Reputation<=719 AND u.CreationDate<='2014-09-10 19:03:05'::timestamp;

