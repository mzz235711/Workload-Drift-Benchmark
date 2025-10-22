/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.Score>=0 AND p.FavoriteCount<=4 AND p.CreationDate<='2014-08-14 19:48:38'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-11-06 00:33:36'::timestamp;

