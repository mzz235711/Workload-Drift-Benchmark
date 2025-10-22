/*+ MergeJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-07-20 16:38:50'::timestamp AND c.CreationDate<='2014-09-03 20:48:27'::timestamp AND p.PostTypeId=1 AND p.FavoriteCount>=0;

