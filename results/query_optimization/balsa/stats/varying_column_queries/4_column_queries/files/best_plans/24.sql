/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-09-05 13:55:05'::timestamp AND u.Reputation<=144;

