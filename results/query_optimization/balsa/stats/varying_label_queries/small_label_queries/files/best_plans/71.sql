/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score>=-2 AND p.ViewCount>=0 AND p.FavoriteCount<=14 AND u.Views>=0 AND u.DownVotes>=0 AND u.CreationDate<='2014-09-04 19:40:22'::timestamp;

