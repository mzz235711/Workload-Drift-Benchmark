/*+ HashJoin(v p t)
 HashJoin(p t)
 SeqScan(v)
 SeqScan(p)
 IndexScan(t)
 Leading((v (p t))) */
SELECT COUNT(*) FROM posts as p, tags as t, votes as v WHERE p.Id = t.ExcerptPostId AND p.OwnerUserId = v.UserId AND t.Count>=1 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

