/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=1 AND p.Score<=14 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount<=16 AND p.CreationDate>='2010-10-05 09:39:19'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-10-29 18:14:54'::timestamp;

