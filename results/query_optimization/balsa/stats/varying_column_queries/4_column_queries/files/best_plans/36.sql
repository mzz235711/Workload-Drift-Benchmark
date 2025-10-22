/*+ HashJoin(v p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND u.Reputation>=1 AND u.Reputation<=140 AND u.Views>=0 AND u.Views<=23;

