/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CreationDate>='2010-07-29 12:44:50'::timestamp AND p.CreationDate<='2014-08-15 22:00:20'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate='2014-06-26 17:16:41'::timestamp;

