/*+ HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.ViewCount>=0 AND p.ViewCount<=33939 AND p.FavoriteCount>=0 AND u.CreationDate<='2014-09-11 15:23:26'::timestamp;

