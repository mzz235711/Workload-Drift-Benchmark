/*+ HashJoin(v p u c)
 HashJoin(p u c)
 HashJoin(u c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(c)
 Leading((v (p (u c)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score<=11 AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND u.Views<=74;

