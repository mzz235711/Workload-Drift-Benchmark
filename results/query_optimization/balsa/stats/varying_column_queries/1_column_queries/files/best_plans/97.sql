/*+ HashJoin(c v u)
 HashJoin(c v)
 IndexScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading(((c v) u)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate<='2014-09-13 19:38:14'::timestamp;

