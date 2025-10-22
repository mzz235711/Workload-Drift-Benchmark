/*+ HashJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=2 AND p.PostTypeId=1 AND p.ViewCount>=0 AND u.Reputation>=1 AND u.Reputation<=143 AND u.Views>=0 AND u.Views<=1319;

