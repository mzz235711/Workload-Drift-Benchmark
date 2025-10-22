/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CreationDate<='2014-08-12 16:27:10'::timestamp;

