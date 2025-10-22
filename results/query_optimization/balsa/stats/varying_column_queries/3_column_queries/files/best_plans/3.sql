/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.Score<=31 AND p.AnswerCount>=0 AND p.CreationDate<='2014-08-31 14:46:40'::timestamp;

