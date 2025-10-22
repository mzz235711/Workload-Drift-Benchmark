/*+ HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score<=47 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND u.Reputation=118 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

