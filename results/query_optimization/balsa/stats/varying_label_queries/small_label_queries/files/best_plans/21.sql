/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND u.Views>=0 AND u.DownVotes=0 AND u.UpVotes<=53;

