/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Reputation<=8164 AND u.UpVotes>=0 AND u.UpVotes<=613 AND b.Date<='2014-09-05 17:29:23'::timestamp;

