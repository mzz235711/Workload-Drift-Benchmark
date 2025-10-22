/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND u.Reputation>=1 AND u.Reputation<=352 AND u.UpVotes>=0;

