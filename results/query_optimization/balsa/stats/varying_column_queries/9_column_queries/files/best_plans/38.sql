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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-27 19:09:24'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=8479 AND p.FavoriteCount<=5 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1 AND u.Views>=0 AND u.UpVotes<=9 AND u.CreationDate>='2010-09-16 07:57:09'::timestamp;

