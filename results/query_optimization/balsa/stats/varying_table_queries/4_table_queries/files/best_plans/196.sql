/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.ViewCount<=6142 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND p.FavoriteCount<=21 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

