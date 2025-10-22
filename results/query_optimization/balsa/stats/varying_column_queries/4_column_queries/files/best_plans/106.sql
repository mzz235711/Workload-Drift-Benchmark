/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-26 19:43:42'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CommentCount>=0;

