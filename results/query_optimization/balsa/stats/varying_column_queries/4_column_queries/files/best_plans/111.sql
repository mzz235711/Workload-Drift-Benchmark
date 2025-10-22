/*+ HashJoin(b v u p t)
 MergeJoin(v u p t)
 HashJoin(u p t)
 HashJoin(p t)
 IndexScan(b)
 IndexScan(v)
 SeqScan(u)
 IndexScan(p)
 IndexScan(t)
 Leading((b (v (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, votes as v, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=2165 AND p.CreationDate<='2014-08-28 10:24:58'::timestamp AND u.Views<=397;

