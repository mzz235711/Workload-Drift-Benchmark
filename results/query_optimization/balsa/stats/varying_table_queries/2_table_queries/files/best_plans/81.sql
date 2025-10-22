/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-19 19:48:32'::timestamp AND p.Score>=-2 AND p.AnswerCount<=6 AND p.CreationDate>='2010-08-06 04:50:59'::timestamp AND p.CreationDate<='2014-09-10 19:52:44'::timestamp;

