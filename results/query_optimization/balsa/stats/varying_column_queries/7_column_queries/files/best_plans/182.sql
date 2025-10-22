/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=87 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount<=16 AND p.FavoriteCount=0;

