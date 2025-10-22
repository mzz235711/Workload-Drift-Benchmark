/*+ HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((c (u p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.ViewCount<=39118 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=1;

