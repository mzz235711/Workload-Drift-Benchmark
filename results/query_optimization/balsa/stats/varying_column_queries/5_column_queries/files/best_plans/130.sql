/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score>=-2 AND p.Score<=53 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CreationDate<='2014-09-14 02:03:28'::timestamp;

