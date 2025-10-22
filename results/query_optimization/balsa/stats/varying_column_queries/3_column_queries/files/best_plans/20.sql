/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.AnswerCount<=3 AND pl.CreationDate<='2014-08-31 16:50:53'::timestamp AND ph.PostHistoryTypeId=25;

