/*+ HashJoin(ph p u)
 HashJoin(ph p)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate<='2014-08-17 07:17:35'::timestamp AND p.PostTypeId=2 AND u.DownVotes>=0;

