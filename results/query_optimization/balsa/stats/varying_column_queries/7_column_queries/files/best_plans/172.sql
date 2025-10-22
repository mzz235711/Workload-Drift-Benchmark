/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate<='2014-09-06 22:11:38'::timestamp AND p.Score<=61 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=9 AND pl.LinkTypeId=1;

