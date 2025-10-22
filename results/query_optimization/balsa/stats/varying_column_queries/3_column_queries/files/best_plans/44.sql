/*+ HashJoin(v u p b)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.FavoriteCount<=17 AND u.Views>=0 AND u.DownVotes>=0;

