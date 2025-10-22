/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CreationDate>='2010-08-15 12:30:19'::timestamp AND p.CreationDate<='2014-09-12 10:36:18'::timestamp AND pl.LinkTypeId=1;

