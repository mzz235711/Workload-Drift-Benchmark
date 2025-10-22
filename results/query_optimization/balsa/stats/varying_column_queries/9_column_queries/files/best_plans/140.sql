/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.Score>=-1 AND p.Score<=17 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND u.Reputation>=1 AND u.Reputation<=1151 AND u.Views<=31;

