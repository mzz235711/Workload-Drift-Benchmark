/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=6 AND p.Score>=-3 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND u.Reputation>=1 AND u.Reputation<=171;

