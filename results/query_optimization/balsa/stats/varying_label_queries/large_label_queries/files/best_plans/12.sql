/*+ HashJoin(p u v b)
 HashJoin(p u v)
 HashJoin(u v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading(((p (u v)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND p.ViewCount<=7939 AND p.FavoriteCount>=0;

