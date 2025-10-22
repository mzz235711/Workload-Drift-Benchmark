/*+ HashJoin(c b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=2 AND u.Reputation>=1;

