/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-08-02 02:20:30'::timestamp AND p.CreationDate<='2014-09-13 18:06:50'::timestamp;

