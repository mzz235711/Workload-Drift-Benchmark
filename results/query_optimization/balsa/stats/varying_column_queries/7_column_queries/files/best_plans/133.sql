/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=13 AND u.Reputation>=1 AND u.Reputation<=494 AND u.Views>=0;

