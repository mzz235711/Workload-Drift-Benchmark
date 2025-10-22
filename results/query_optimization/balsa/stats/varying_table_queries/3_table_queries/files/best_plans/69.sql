/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score>=-4 AND p.Score<=22 AND p.ViewCount>=0 AND p.CommentCount<=10 AND p.CreationDate>='2010-09-26 09:41:18'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

