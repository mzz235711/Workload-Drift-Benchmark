/*+ HashJoin(b u c v)
 HashJoin(b u c)
 HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 SeqScan(v)
 Leading((((b u) c) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Reputation<=146 AND u.CreationDate<='2014-08-07 17:50:12'::timestamp;

