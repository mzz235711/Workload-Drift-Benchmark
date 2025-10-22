/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=2 AND p.CreationDate>='2010-07-20 23:07:48'::timestamp AND u.CreationDate<='2014-08-09 09:55:16'::timestamp;

