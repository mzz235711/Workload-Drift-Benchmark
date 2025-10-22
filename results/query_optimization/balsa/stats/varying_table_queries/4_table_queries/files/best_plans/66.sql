/*+ MergeJoin(c v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Views<=43 AND u.CreationDate<='2014-09-10 19:33:49'::timestamp;

