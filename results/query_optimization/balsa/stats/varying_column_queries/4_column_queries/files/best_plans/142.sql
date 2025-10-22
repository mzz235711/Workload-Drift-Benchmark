/*+ HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.PostTypeId=1 AND p.CommentCount<=17 AND p.CreationDate<='2014-09-10 15:29:29'::timestamp AND u.CreationDate>='2010-07-21 10:25:49'::timestamp;

