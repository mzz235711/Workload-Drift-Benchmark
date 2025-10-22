/*+ HashJoin(v u c)
 HashJoin(v u)
 IndexScan(v)
 SeqScan(u)
 SeqScan(c)
 Leading(((v u) c)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

