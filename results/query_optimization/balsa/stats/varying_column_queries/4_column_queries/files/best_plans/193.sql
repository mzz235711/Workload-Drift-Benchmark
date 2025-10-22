/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.ViewCount<=30581 AND p.CommentCount>=0 AND p.CreationDate<='2014-09-14 01:27:54'::timestamp AND u.CreationDate>='2010-09-02 23:42:12'::timestamp;

