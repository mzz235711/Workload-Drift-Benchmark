/*+ HashJoin(p v u)
 HashJoin(v u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.ViewCount<=2451 AND p.FavoriteCount>=0 AND u.Reputation=101 AND u.DownVotes>=0 AND u.UpVotes=2;

