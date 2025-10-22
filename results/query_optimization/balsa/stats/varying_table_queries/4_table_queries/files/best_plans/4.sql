/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.CreationDate>='2010-09-04 03:59:07'::timestamp AND c.CreationDate<='2014-09-02 21:34:17'::timestamp AND v.VoteTypeId=5 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Reputation<=5859 AND u.Views>=0;

