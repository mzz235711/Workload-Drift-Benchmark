/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading((b ((c u) v))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND b.Date>='2010-07-19 19:39:10'::timestamp AND u.Reputation<=136 AND u.Views=1;

