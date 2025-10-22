/*+ HashJoin(c u v b)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=236 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-10-06 20:56:29'::timestamp;

