/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 MergeJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.FavoriteCount=0 AND pl.CreationDate<='2014-09-11 18:15:17'::timestamp AND u.Views=0;

