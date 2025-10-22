/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-09-03 16:33:07'::timestamp AND p.Score>=0 AND p.Score<=64 AND p.AnswerCount=2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND p.CreationDate<='2014-08-19 05:44:26'::timestamp;

