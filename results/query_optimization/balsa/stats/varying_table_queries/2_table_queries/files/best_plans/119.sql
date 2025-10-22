/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=18 AND p.ViewCount<=10228 AND p.AnswerCount<=2 AND p.CommentCount<=10 AND u.Views>=0 AND u.Views<=36 AND u.DownVotes=0;

