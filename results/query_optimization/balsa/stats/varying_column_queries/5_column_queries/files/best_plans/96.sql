/*+ HashJoin(ph p u)
 HashJoin(ph p)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=3 AND p.FavoriteCount>=0 AND u.DownVotes<=5 AND u.UpVotes>=0 AND u.UpVotes<=17;

