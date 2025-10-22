/*+ HashJoin(ph b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((ph (b (v u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=32 AND u.DownVotes>=0;

