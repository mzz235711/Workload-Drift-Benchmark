/*+ HashJoin(u v b c)
 HashJoin(u v b)
 HashJoin(u v)
 IndexScan(u)
 IndexScan(v)
 SeqScan(b)
 SeqScan(c)
 Leading((((u v) b) c)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.BountyAmount>=0;

