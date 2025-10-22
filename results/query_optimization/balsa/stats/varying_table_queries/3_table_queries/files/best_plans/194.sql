/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.CreationDate>='2010-08-08 21:57:57'::timestamp AND u.Views<=26 AND u.CreationDate>='2010-07-19 19:19:32'::timestamp AND u.CreationDate<='2014-08-29 17:46:38'::timestamp;

