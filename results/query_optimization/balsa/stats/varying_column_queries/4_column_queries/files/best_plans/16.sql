/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-19 22:04:06'::timestamp AND b.Date<='2014-09-07 12:46:58'::timestamp AND p.ViewCount<=1608 AND p.AnswerCount=0;

