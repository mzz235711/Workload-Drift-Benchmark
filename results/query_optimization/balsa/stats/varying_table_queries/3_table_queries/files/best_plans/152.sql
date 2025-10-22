/*+ MergeJoin(u c p)
 MergeJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.AnswerCount>=0 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=158;

