/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.CreationDate>='2009-02-03 00:00:00'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND p.CreationDate>='2010-08-22 10:30:13'::timestamp AND p.CreationDate<='2014-09-10 13:51:39'::timestamp;

