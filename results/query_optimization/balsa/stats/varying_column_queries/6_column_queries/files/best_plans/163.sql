/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate<='2014-09-04 19:54:38'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=19 AND u.Views>=0 AND u.Views<=264 AND u.CreationDate>='2010-10-15 10:42:20'::timestamp;

