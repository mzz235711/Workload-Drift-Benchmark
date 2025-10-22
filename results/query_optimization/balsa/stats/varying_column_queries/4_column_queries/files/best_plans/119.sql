/*+ HashJoin(u v p)
 HashJoin(u v)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading(((u v) p)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.CreationDate>='2009-02-03 00:00:00'::timestamp AND p.ViewCount<=6454 AND p.CreationDate>='2010-07-28 04:29:37'::timestamp AND p.CreationDate<='2014-09-10 15:29:29'::timestamp;

