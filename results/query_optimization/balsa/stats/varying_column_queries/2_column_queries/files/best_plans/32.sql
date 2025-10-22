/*+ HashJoin(u ph p)
 HashJoin(u ph)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(p)
 Leading(((u ph) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=2 AND u.DownVotes>=0;

