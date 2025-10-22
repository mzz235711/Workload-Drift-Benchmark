/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2028 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND u.Views>=0 AND u.Views<=19 AND u.DownVotes>=0 AND u.DownVotes<=0;

