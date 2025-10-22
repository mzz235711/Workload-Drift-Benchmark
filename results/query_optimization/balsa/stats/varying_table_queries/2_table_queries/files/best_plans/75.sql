/*+ NestLoop(b p)
 IndexScan(b)
 IndexScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date='2013-02-19 03:04:26'::timestamp AND p.Score<=47 AND p.AnswerCount>=0 AND p.AnswerCount<=5;

