/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount<=5727 AND p.AnswerCount>=0 AND p.AnswerCount<=7 AND p.CreationDate>='2010-09-24 15:43:45'::timestamp;

