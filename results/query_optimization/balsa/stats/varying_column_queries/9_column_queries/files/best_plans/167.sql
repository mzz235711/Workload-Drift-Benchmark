/*+ HashJoin(b ph p pl u v)
 HashJoin(ph p pl u v)
 HashJoin(p pl u v)
 HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 SeqScan(v)
 Leading((b (ph (((p pl) u) v)))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.PostTypeId=2 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-08-11 17:24:30'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-31 22:47:40'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-06-05 04:44:59'::timestamp AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp;

