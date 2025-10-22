/*+ HashJoin(c u p)
 MergeJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate<='2014-09-12 16:17:46'::timestamp AND p.Score<=18;

