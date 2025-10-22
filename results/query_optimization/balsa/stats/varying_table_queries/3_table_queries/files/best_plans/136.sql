/*+ MergeJoin(u c p)
 MergeJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=3 AND p.ViewCount<=16486 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CommentCount<=9 AND p.FavoriteCount=0;

