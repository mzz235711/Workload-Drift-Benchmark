/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-08-26 17:00:58'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=19 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.CommentCount<=17;

