/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND c.CreationDate<='2014-09-07 10:39:26'::timestamp AND p.AnswerCount=0 AND p.CreationDate='2013-10-01 16:24:42'::timestamp;

