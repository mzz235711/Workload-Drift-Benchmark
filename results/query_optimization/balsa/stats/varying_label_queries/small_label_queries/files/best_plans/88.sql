/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=1 AND c.CreationDate>='2010-07-20 05:41:15'::timestamp AND p.PostTypeId=1 AND p.Score<=34 AND p.AnswerCount>=0 AND p.CreationDate<='2014-09-13 18:36:36'::timestamp;

