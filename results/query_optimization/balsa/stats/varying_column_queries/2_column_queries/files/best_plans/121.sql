/*+ MergeJoin(p u)
 IndexScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.CommentCount<=11 AND u.Reputation>=1;

