/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-11-04 09:16:26'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND pl.CreationDate>='2012-01-24 20:54:56'::timestamp;

