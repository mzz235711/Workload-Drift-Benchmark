/*+ HashJoin(ph u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND c.CreationDate>='2010-07-25 08:36:42'::timestamp AND c.CreationDate<='2014-09-12 02:23:17'::timestamp AND p.ViewCount>=0 AND p.AnswerCount<=7 AND pl.LinkTypeId=1 AND u.Views<=21;

