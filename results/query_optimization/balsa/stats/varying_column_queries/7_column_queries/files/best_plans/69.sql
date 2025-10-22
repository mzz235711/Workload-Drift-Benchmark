/*+ HashJoin(p v u)
 MergeJoin(v u)
 SeqScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=2993 AND p.FavoriteCount<=19 AND u.Reputation>=1 AND u.Reputation<=1282 AND u.Views<=28 AND u.UpVotes>=0;

