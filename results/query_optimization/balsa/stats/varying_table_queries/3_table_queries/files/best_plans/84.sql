/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-13 05:51:00'::timestamp AND p.CreationDate<='2014-09-12 16:40:29'::timestamp AND u.Reputation>=1 AND u.Reputation<=918 AND u.Views>=0 AND u.Views<=19;

