/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.ViewCount>=0 AND p.ViewCount<=1566 AND p.AnswerCount<=5 AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes<=463 AND u.CreationDate>='2010-10-31 16:42:07'::timestamp;

