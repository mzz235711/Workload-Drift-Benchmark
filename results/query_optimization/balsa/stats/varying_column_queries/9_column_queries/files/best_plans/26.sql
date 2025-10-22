/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND u.Reputation>=1 AND u.Reputation<=1589 AND u.Views>=0 AND u.Views<=39 AND u.DownVotes<=0;

