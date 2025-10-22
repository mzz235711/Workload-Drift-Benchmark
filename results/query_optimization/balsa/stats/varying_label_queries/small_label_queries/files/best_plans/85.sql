/*+ NestLoop(u p t v)
 HashJoin(u p t)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 SeqScan(t)
 IndexScan(v)
 Leading((((u p) t) v)) */
SELECT COUNT(*) FROM tags as t, posts as p, votes as v, users as u WHERE p.Id = t.ExcerptPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.CreationDate<='2014-09-05 21:56:24'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=344;

