/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=66071 AND p.CommentCount>=0 AND p.CommentCount<=30 AND p.FavoriteCount>=0 AND p.FavoriteCount<=20 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=12;

