/*+ HashJoin(ph u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((ph (u (p v)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.FavoriteCount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

