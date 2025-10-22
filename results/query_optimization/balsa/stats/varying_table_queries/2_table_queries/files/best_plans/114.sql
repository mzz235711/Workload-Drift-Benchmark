/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND c.CreationDate>='2010-08-06 02:44:34'::timestamp AND c.CreationDate<='2014-09-13 17:09:14'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=20374 AND p.AnswerCount>=0 AND p.AnswerCount<=5;

