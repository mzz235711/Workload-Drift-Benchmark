/*+ HashJoin(b u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount>=0 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=171;

