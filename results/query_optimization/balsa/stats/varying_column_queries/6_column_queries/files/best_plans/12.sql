/*+ HashJoin(ph p u)
 HashJoin(ph p)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=2 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=10 AND u.UpVotes<=148;

