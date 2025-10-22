/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Reputation<=1001 AND u.UpVotes>=0 AND u.UpVotes<=8;

