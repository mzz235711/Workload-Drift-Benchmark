/*+ HashJoin(p v u)
 NestLoop(v u)
 SeqScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND p.CommentCount>=0 AND p.CommentCount<=28 AND p.FavoriteCount<=21 AND u.UpVotes>=0 AND u.UpVotes<=123;

