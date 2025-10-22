/*+ MergeJoin(p v u)
 MergeJoin(v u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.BountyAmount>=0 AND p.CommentCount>=0;

