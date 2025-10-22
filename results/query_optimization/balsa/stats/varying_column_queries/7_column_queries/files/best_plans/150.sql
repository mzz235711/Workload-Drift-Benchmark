/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND u.Reputation>=1 AND u.Reputation<=262 AND u.Views<=206 AND u.CreationDate>='2010-09-10 14:18:01'::timestamp AND u.CreationDate<='2014-08-29 17:32:03'::timestamp;

