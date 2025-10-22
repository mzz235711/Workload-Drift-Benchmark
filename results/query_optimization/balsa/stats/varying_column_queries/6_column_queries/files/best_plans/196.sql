/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-08-17 06:13:45'::timestamp AND b.Date<='2014-09-04 03:49:18'::timestamp AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.FavoriteCount<=3;

