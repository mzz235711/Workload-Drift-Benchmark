/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.PostTypeId=1 AND p.Score>=0 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=9 AND p.CreationDate<='2014-09-12 06:16:02'::timestamp;

