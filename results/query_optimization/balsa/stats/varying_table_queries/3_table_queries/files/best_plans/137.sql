/*+ HashJoin(p u c)
 MergeJoin(u c)
 SeqScan(p)
 IndexScan(u)
 IndexScan(c)
 Leading((p (u c))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=1 AND p.Score<=20 AND p.ViewCount>=0 AND p.ViewCount<=1836 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND u.Reputation>=1 AND u.Views<=287 AND u.DownVotes>=0 AND u.UpVotes<=53;

