/*+ MergeJoin(v t p)
 MergeJoin(t p)
 IndexScan(v)
 IndexScan(t)
 IndexScan(p)
 Leading((v (t p))) */
SELECT COUNT(*) FROM posts as p, tags as t, votes as v WHERE p.Id = t.ExcerptPostId AND p.OwnerUserId = v.UserId AND t.Count>=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

