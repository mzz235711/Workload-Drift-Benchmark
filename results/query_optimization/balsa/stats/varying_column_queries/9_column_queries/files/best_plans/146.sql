/*+ HashJoin(p ph u)
 HashJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 SeqScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=4 AND p.PostTypeId=1 AND p.Score>=-1 AND p.AnswerCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=51 AND u.Reputation=1 AND u.DownVotes=0;

