/*+ HashJoin(ph p u)
 MergeJoin(ph p)
 IndexScan(ph)
 IndexScan(p)
 SeqScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.FavoriteCount<=10 AND u.Reputation>=1;

