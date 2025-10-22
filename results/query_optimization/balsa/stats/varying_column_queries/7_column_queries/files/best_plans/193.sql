/*+ NestLoop(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score<=24 AND p.ViewCount<=2671 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount=2 AND u.Views>=0 AND u.CreationDate<='2014-09-09 19:58:15'::timestamp;

