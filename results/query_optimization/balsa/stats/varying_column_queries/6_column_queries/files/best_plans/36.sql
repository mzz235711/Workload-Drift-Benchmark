/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.CommentCount<=12 AND p.FavoriteCount<=15 AND u.Views<=203 AND u.DownVotes>=0 AND u.UpVotes<=36;

