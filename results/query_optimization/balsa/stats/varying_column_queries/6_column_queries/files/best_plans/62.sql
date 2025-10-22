/*+ HashJoin(u ph p)
 HashJoin(u ph)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading(((u ph) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=5 AND p.CommentCount<=10 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-19 19:37:31'::timestamp AND u.Views>=0 AND u.Views<=39;

