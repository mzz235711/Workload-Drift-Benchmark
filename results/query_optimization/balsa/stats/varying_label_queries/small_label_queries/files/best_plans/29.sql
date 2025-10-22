/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=1 AND u.Views>=0 AND u.Views<=77 AND u.CreationDate<='2014-09-03 07:28:31'::timestamp;

