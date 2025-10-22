/*+ HashJoin(v p u c)
 HashJoin(p u c)
 HashJoin(p u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(c)
 Leading((v ((p u) c))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.Score>=-2 AND p.Score<=22 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views<=5680;

