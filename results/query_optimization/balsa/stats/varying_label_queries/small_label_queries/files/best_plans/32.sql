/*+ NestLoop(p c ph)
 NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 IndexScan(ph)
 Leading(((p c) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=1 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount=0 AND ph.PostHistoryTypeId=5;

