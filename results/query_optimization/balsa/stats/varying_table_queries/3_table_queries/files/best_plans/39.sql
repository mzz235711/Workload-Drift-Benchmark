/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount<=12112 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=27 AND u.DownVotes<=18;

