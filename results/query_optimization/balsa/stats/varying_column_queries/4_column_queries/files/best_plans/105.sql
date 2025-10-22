/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-27 01:17:13'::timestamp AND c.CreationDate<='2014-09-11 21:36:33'::timestamp AND p.AnswerCount<=4 AND p.FavoriteCount>=0;

