/*+ HashJoin(c v u b)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 SeqScan(b)
 Leading(((c (v u)) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.UpVotes>=0;

