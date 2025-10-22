/*+ NestLoop(p u pl c)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 IndexScan(c)
 Leading((((p u) pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=2 AND c.CreationDate>='2010-07-27 07:18:30'::timestamp AND p.AnswerCount<=2 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-20 22:40:51'::timestamp AND p.CreationDate<='2014-09-05 21:56:24'::timestamp AND u.Reputation<=457 AND u.UpVotes>=0;

