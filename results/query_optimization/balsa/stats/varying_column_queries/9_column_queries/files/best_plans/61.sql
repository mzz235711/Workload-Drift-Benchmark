/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2794 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-09-03 20:47:11'::timestamp AND u.DownVotes<=1 AND u.UpVotes<=201 AND b.Date>='2010-07-28 12:53:53'::timestamp;

