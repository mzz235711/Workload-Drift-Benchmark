/*+ MergeJoin(p c u)
 HashJoin(c u)
 SeqScan(p)
 SeqScan(c)
 SeqScan(u)
 Leading((p (c u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.Score<=11 AND p.AnswerCount=2 AND p.FavoriteCount<=5 AND u.Views<=14 AND u.CreationDate<='2014-09-02 20:07:19'::timestamp;

