/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=47 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=16;

