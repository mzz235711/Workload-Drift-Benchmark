/*+ HashJoin(c v u p)
 MergeJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND v.CreationDate>='2010-07-29 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation=1 AND u.Views>=0 AND u.Views<=60;

