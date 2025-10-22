/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 IndexScan(u)
 SeqScan(v)
 Leading((((c p) u) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=2 AND u.Views>=0 AND u.CreationDate>='2010-11-22 18:18:03'::timestamp;

