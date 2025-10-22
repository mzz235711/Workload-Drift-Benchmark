/*+ HashJoin(u c p)
 HashJoin(c p)
 SeqScan(u)
 SeqScan(c)
 IndexScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND c.CreationDate<='2014-09-13 02:21:33'::timestamp AND p.Score<=28 AND p.ViewCount>=0 AND p.ViewCount<=5595 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=17 AND p.FavoriteCount>=0 AND u.Views<=195 AND u.UpVotes>=0;

