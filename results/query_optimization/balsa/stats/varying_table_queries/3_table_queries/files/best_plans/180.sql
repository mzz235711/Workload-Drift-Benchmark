/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=3463 AND u.Reputation>=1 AND u.Reputation<=7246 AND u.UpVotes<=104;

