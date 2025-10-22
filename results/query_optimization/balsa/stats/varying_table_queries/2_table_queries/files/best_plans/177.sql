/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-1 AND p.ViewCount<=5704 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=8 AND p.CreationDate>='2010-08-06 05:15:22'::timestamp;

