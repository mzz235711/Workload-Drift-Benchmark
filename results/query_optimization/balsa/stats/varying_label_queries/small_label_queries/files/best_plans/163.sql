/*+ NestLoop(p pl c)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(c)
 Leading(((p pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=20 AND p.AnswerCount<=4 AND p.CommentCount<=16 AND pl.LinkTypeId=1;

