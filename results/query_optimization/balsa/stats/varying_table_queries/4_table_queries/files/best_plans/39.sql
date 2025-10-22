/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND v.CreationDate>='2010-01-05 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND u.CreationDate>='2010-07-27 22:00:34'::timestamp AND u.CreationDate<='2014-09-10 19:25:03'::timestamp;

