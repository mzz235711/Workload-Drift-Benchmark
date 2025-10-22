/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-13 11:04:33'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=22354 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-19 02:23:45'::timestamp;

