/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND c.CreationDate>='2010-07-19 19:59:04'::timestamp AND c.CreationDate<='2014-09-03 02:30:52'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND ph.CreationDate>='2010-08-13 05:51:00'::timestamp AND ph.CreationDate<='2014-09-11 09:08:23'::timestamp;

