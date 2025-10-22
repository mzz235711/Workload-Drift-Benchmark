/*+ NestLoop(p b)
 SeqScan(p)
 IndexScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-08-12 13:04:57'::timestamp AND p.Score=2 AND p.AnswerCount=0 AND p.FavoriteCount<=4;

