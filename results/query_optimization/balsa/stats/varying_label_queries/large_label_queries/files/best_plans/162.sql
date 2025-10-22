/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate<='2014-09-13 21:09:00'::timestamp AND p.PostTypeId=2 AND u.Reputation>=1 AND u.CreationDate>='2011-02-15 01:19:19'::timestamp AND u.CreationDate<='2014-08-28 12:20:29'::timestamp;

