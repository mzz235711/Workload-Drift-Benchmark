/*+ HashJoin(u v p t)
 MergeJoin(v p t)
 HashJoin(p t)
 IndexScan(u)
 IndexScan(v)
 IndexScan(p)
 IndexScan(t)
 Leading((u (v (p t)))) */
SELECT COUNT(*) FROM tags as t, posts as p, votes as v, users as u WHERE p.Id = t.ExcerptPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Views<=49 AND u.UpVotes<=93;

