/*+ HashJoin(p t v)
 HashJoin(p t)
 SeqScan(p)
 IndexScan(t)
 SeqScan(v)
 Leading(((p t) v)) */
SELECT COUNT(*) FROM posts as p, tags as t, votes as v WHERE p.Id = t.ExcerptPostId AND p.OwnerUserId = v.UserId AND p.CreationDate<='2014-09-06 18:19:43'::timestamp;

