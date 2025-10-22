/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.CommentCount<=19 AND p.CreationDate<='2014-09-10 19:12:33'::timestamp AND u.Views<=27 AND u.UpVotes>=0 AND u.UpVotes<=18;

