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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=8 AND p.FavoriteCount>=0 AND p.CreationDate>='2009-04-12 15:22:27'::timestamp AND p.CreationDate<='2014-09-10 04:05:48'::timestamp AND ph.PostHistoryTypeId=3;

