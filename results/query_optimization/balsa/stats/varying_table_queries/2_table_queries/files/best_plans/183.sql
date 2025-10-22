/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate<='2014-08-29 07:27:30'::timestamp;

