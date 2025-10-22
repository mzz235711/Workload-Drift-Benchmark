/*+ HashJoin(v c u)
 MergeJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=1 AND u.CreationDate<='2014-08-23 14:04:47'::timestamp;

