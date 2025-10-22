/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=21 AND p.AnswerCount<=8 AND p.CreationDate>='2010-07-19 21:11:44'::timestamp AND p.CreationDate<='2014-09-08 14:22:10'::timestamp;

