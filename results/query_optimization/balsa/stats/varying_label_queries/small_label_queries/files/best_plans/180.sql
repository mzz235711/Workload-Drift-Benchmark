/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.ViewCount<=39667 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND u.Reputation<=552 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=15;

