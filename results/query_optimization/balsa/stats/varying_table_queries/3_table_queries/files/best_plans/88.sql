/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.CreationDate>='2010-07-28 16:15:07'::timestamp AND p.CreationDate<='2014-09-08 11:25:43'::timestamp;

