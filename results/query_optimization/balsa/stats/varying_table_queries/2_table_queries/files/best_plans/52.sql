/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.Score<=14 AND p.ViewCount>=0 AND p.ViewCount<=3214 AND p.AnswerCount>=0 AND p.CommentCount=4;

