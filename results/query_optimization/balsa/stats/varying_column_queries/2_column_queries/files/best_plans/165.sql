/*+ HashJoin(c b v u)
 HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(b)
 IndexScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=2 AND u.DownVotes<=0;

