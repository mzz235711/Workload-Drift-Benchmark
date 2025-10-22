/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.BountyAmount>=0 AND v.BountyAmount<=25 AND u.Reputation>=1 AND u.Views<=29 AND u.DownVotes<=3;

