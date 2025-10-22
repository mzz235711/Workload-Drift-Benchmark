/*+ HashJoin(v p t)
 HashJoin(p t)
 SeqScan(v)
 SeqScan(p)
 IndexScan(t)
 Leading((v (p t))) */
SELECT COUNT(*) FROM posts as p, tags as t, votes as v WHERE p.Id = t.ExcerptPostId AND p.OwnerUserId = v.UserId AND p.Score>=-4 AND t.Count>=2 AND v.BountyAmount>=0 AND v.BountyAmount<=400 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

