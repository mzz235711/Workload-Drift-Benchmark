/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-07 18:28:52'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=3777 AND p.AnswerCount=0;

