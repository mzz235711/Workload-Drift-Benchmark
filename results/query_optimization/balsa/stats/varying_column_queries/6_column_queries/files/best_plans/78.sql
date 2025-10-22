/*+ HashJoin(c u v p)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((((c u) v) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-19 21:38:27'::timestamp AND c.CreationDate<='2014-09-08 14:37:13'::timestamp AND p.PostTypeId=1 AND u.Views>=0 AND u.Views<=42;

