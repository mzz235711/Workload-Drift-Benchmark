/*+ HashJoin(b u p ph)
 HashJoin(u p ph)
 HashJoin(p ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(ph)
 Leading((b (u (p ph)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.FavoriteCount<=18 AND b.Date>='2010-07-27 02:48:44'::timestamp;

