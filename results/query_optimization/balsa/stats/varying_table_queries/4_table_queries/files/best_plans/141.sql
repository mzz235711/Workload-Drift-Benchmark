/*+ HashJoin(c b u v)
 MergeJoin(b u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-26 00:25:00'::timestamp AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=397;

