/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=9 AND u.Reputation<=1091 AND u.UpVotes=0;

