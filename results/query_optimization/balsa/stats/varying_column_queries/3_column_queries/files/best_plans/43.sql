/*+ HashJoin(v u b ph c)
 MergeJoin(v u b ph)
 HashJoin(u b ph)
 HashJoin(u b)
 IndexScan(v)
 IndexScan(u)
 IndexScan(b)
 IndexScan(ph)
 IndexScan(c)
 Leading(((v ((u b) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-08-06 09:48:44'::timestamp AND c.CreationDate<='2014-09-08 11:12:42'::timestamp AND u.Reputation<=135;

