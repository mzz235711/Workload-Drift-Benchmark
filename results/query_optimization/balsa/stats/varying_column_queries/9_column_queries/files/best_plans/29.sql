/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-09-12 14:54:50'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=3382 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-27 13:14:19'::timestamp AND p.CreationDate<='2014-08-30 05:12:47'::timestamp AND u.Views<=27 AND u.UpVotes<=81;

