/*+ MergeJoin(v p t)
 HashJoin(p t)
 IndexScan(v)
 IndexScan(p)
 IndexScan(t)
 Leading((v (p t))) */
SELECT COUNT(*) FROM posts as p, tags as t, votes as v WHERE p.Id = t.ExcerptPostId AND p.OwnerUserId = v.UserId AND p.Score<=12 AND p.CommentCount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

