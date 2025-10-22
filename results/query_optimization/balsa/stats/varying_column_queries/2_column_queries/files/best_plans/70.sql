/*+ HashJoin(c u v p)
 HashJoin(u v p)
 MergeJoin(v p)
 SeqScan(c)
 SeqScan(u)
 IndexScan(v)
 IndexScan(p)
 Leading((c (u (v p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.CreationDate>='2010-08-13 16:11:20'::timestamp AND u.CreationDate<='2014-09-08 20:54:41'::timestamp;

