/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=15051 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND u.UpVotes>=0;

