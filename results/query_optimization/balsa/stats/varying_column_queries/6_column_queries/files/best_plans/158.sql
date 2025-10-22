/*+ HashJoin(c u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((c (u (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-11 18:00:53'::timestamp AND p.ViewCount>=0 AND v.BountyAmount<=100 AND v.CreationDate<='2014-09-14 00:00:00'::timestamp AND u.Views>=0 AND u.CreationDate<='2014-09-01 19:14:11'::timestamp;

