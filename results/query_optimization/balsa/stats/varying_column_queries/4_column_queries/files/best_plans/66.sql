/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-07-28 13:20:05'::timestamp AND p.Score>=0 AND p.CommentCount>=0 AND u.UpVotes<=13;

