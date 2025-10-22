/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-09-11 22:37:38'::timestamp AND p.Score>=-1 AND p.AnswerCount<=3 AND p.CreationDate>='2010-07-23 06:49:38'::timestamp AND p.CreationDate<='2014-08-19 00:36:13'::timestamp;

