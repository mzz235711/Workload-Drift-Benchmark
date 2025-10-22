/*+ HashJoin(ph u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-10 14:17:26'::timestamp AND p.PostTypeId=1 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-20 06:28:47'::timestamp AND p.CreationDate<='2014-09-09 02:38:14'::timestamp;

