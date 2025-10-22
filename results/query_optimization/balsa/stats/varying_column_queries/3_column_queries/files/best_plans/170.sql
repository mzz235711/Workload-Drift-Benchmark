/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.AnswerCount=0 AND p.CommentCount<=9 AND p.CreationDate>='2010-07-21 13:53:13'::timestamp;

