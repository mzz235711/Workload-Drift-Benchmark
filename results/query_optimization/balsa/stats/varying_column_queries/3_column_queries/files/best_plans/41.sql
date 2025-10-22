/*+ HashJoin(v t p)
 MergeJoin(t p)
 SeqScan(v)
 IndexScan(t)
 IndexScan(p)
 Leading((v (t p))) */
SELECT COUNT(*) FROM posts as p, tags as t, votes as v WHERE p.Id = t.ExcerptPostId AND p.OwnerUserId = v.UserId AND p.CommentCount<=9 AND p.CreationDate>='2010-07-27 11:04:08'::timestamp AND t.Count=35;

