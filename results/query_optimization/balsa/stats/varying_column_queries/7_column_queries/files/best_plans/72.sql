/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score<=10 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CreationDate>='2010-08-03 21:30:22'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-12 13:03:05'::timestamp AND pl.CreationDate<='2014-08-24 06:40:36'::timestamp;

