/*+ HashJoin(v u b ph)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 SeqScan(ph)
 Leading(((v (u b)) ph)) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Reputation<=844 AND u.UpVotes>=0 AND u.UpVotes<=41;

