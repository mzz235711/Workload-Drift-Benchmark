/*+ NestLoop(p u pl c)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 IndexScan(c)
 Leading((((p u) pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=4 AND p.Score>=-1 AND p.Score<=42 AND p.ViewCount<=22258 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.FavoriteCount<=13 AND p.CreationDate<='2014-09-12 20:34:34'::timestamp AND pl.CreationDate>='2010-10-22 16:08:30'::timestamp AND u.Views=0 AND u.CreationDate>='2010-07-28 10:07:46'::timestamp AND u.CreationDate<='2014-08-20 15:32:07'::timestamp;

