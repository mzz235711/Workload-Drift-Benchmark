/*+ MergeJoin(u v t p)
 HashJoin(v t p)
 HashJoin(t p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(t)
 SeqScan(p)
 Leading((u (v (t p)))) */
SELECT COUNT(*) FROM tags as t, posts as p, votes as v, users as u WHERE p.Id = t.ExcerptPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND t.Count<=559 AND v.CreationDate<='2014-09-04 00:00:00'::timestamp;

