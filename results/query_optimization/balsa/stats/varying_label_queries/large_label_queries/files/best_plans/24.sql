/*+ HashJoin(u c ph p pl)
 HashJoin(c ph p pl)
 MergeJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (c (ph (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND p.AnswerCount>=0 AND pl.CreationDate>='2012-03-11 17:30:52'::timestamp AND pl.CreationDate<='2014-07-26 12:05:54'::timestamp AND ph.PostHistoryTypeId=5;

