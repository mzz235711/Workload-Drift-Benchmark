/*+ HashJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND c.CreationDate>='2010-09-03 22:44:20'::timestamp AND c.CreationDate<='2014-09-05 16:56:16'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=3121 AND p.FavoriteCount>=0 AND p.FavoriteCount<=2 AND pl.CreationDate>='2010-10-20 22:08:02'::timestamp AND pl.CreationDate<='2014-09-02 09:46:38'::timestamp AND u.Reputation>=1 AND u.CreationDate<='2014-08-22 05:50:10'::timestamp;

