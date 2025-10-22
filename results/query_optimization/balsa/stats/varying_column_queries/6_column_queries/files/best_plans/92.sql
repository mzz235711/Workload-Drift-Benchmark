/*+ HashJoin(c u v b)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-27 09:51:43'::timestamp AND c.CreationDate<='2014-09-13 12:01:42'::timestamp AND v.BountyAmount<=100 AND u.Reputation>=1 AND u.Reputation<=164 AND u.UpVotes>=0;

