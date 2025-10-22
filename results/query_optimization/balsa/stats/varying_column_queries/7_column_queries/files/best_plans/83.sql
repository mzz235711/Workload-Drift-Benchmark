/*+ MergeJoin(u c p)
 HashJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND c.CreationDate<='2014-09-08 00:18:48'::timestamp AND p.Score>=-1 AND p.Score<=12 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.FavoriteCount>=0;

