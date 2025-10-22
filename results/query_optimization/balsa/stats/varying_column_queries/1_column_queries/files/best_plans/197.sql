/*+ HashJoin(v u c)
 HashJoin(v u)
 IndexScan(v)
 SeqScan(u)
 IndexScan(c)
 Leading(((v u) c)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-07-19 20:54:37'::timestamp;

