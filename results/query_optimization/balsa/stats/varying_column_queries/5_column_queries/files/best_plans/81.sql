/*+ HashJoin(b v c u)
 HashJoin(v c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((b (v (c u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-23 13:32:48'::timestamp AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.UpVotes<=5;

