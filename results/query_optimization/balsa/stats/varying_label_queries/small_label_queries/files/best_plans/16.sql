/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.Score<=37 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-18 02:11:10'::timestamp AND p.CreationDate<='2014-08-20 19:40:27'::timestamp;

