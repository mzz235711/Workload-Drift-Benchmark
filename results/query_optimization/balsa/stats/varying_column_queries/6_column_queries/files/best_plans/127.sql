/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND u.Reputation<=8635 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=28;

