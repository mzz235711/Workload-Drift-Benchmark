/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.Score>=0 AND p.Score<=15 AND p.ViewCount>=0 AND u.Reputation<=3963 AND u.Views>=0 AND u.UpVotes>=0;

