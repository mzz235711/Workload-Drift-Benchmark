/*+ MergeJoin(u c p)
 HashJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-07-20 12:09:08'::timestamp AND p.CreationDate<='2014-09-10 10:23:56'::timestamp AND u.Reputation>=1 AND u.Reputation<=241;

