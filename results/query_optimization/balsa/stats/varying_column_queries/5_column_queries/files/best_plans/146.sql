/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.VoteTypeId=5 AND u.Reputation>=1 AND u.Views<=75 AND u.DownVotes>=0 AND u.DownVotes<=6;

