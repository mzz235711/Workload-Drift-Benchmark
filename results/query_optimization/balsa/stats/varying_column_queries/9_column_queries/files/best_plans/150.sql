/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-04 13:46:53'::timestamp AND c.CreationDate<='2014-08-22 22:04:57'::timestamp AND p.Score>=-1 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-24 05:39:23'::timestamp;

