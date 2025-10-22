/*+ HashJoin(u c p v)
 HashJoin(c p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(v)
 Leading((u (c (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND v.BountyAmount<=100;

