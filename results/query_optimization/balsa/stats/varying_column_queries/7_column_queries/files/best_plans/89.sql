/*+ NestLoop(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-4 AND p.Score<=29 AND p.CommentCount>=0 AND p.CommentCount<=20 AND pl.CreationDate='2014-09-09 18:13:46'::timestamp AND u.Reputation>=1 AND u.Views<=103;

