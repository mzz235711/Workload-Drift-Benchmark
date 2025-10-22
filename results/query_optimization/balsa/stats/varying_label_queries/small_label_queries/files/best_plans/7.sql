/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND c.CreationDate<='2014-09-11 08:29:28'::timestamp AND p.CommentCount<=9 AND u.Reputation>=1 AND u.DownVotes=0 AND u.UpVotes>=0 AND u.UpVotes<=2;

