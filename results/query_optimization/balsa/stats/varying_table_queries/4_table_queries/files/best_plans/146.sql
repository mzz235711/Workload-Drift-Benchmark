/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=1 AND c.CreationDate<='2014-09-13 06:00:54'::timestamp AND p.CommentCount>=0 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=842;

