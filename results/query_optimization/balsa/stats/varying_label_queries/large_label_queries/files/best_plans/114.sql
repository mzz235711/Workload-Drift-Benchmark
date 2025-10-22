/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-26 13:37:04'::timestamp AND p.Score=2 AND p.ViewCount>=0 AND p.ViewCount<=6454 AND p.AnswerCount<=2 AND p.CreationDate>='2009-02-02 14:31:27'::timestamp AND p.CreationDate<='2014-09-12 03:39:00'::timestamp;

