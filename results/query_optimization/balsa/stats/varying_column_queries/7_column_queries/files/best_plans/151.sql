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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND p.FavoriteCount<=14 AND p.CreationDate>='2010-07-26 19:44:44'::timestamp AND p.CreationDate<='2014-09-10 08:48:55'::timestamp AND ph.PostHistoryTypeId=6 AND u.CreationDate<='2014-08-17 11:04:39'::timestamp;

