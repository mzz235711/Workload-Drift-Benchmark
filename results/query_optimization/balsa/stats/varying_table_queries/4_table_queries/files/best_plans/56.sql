/*+ HashJoin(v u c p)
 HashJoin(u c p)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((v (u (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND u.Views>=0;

