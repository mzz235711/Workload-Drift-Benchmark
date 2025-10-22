/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=5 AND p.Score>=0 AND p.Score<=36 AND p.ViewCount>=0 AND p.AnswerCount=1 AND p.CommentCount<=15 AND p.FavoriteCount>=0 AND u.UpVotes>=0 AND u.UpVotes<=304;

