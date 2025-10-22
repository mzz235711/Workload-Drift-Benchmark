/*+ HashJoin(ph u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((ph (u (p v)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Reputation>=1;

