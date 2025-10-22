/*+ HashJoin(p v u)
 MergeJoin(v u)
 SeqScan(p)
 IndexScan(v)
 SeqScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.CommentCount<=12 AND p.FavoriteCount=0;

