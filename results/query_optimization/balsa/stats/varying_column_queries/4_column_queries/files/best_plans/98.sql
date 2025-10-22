/*+ MergeJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.PostTypeId=1 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-09-12 15:12:02'::timestamp AND u.CreationDate<='2014-08-05 03:44:15'::timestamp;

