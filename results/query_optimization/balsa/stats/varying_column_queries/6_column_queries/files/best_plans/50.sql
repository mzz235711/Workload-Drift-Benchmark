/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.Score>=-2 AND p.Score<=37 AND p.AnswerCount>=0 AND p.CreationDate>='2010-08-06 22:16:01'::timestamp AND p.CreationDate<='2014-08-19 13:02:31'::timestamp;

