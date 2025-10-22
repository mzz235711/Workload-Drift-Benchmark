/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-08-26 14:16:42'::timestamp AND p.Score>=0 AND p.Score<=27 AND p.AnswerCount=1;

