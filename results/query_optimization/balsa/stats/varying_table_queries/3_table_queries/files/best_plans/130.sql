/*+ MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score<=20 AND p.FavoriteCount<=3 AND u.DownVotes>=0;

