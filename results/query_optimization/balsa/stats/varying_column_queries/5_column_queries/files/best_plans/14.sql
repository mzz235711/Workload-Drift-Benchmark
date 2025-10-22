/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-04 19:50:08'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-11 10:29:29'::timestamp;

