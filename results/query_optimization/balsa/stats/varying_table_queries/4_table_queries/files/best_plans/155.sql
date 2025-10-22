/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Reputation<=230 AND u.Views>=0;

