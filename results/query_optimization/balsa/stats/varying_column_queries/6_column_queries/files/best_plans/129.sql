/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.Score>=-3 AND p.Score<=18 AND p.AnswerCount<=3 AND p.CreationDate>='2010-09-13 20:12:57'::timestamp AND p.CreationDate<='2014-08-29 13:44:21'::timestamp;

