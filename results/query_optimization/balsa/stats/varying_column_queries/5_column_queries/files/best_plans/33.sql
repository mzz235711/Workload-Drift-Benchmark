/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=1646 AND u.DownVotes>=0 AND u.CreationDate<='2014-09-11 11:49:17'::timestamp;

