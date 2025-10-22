/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.AnswerCount<=5 AND u.Reputation>=1 AND u.Reputation<=213 AND u.Views<=50 AND u.DownVotes>=0 AND u.UpVotes>=0;

