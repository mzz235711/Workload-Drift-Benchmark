/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-08-06 18:30:34'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=5960 AND p.AnswerCount<=5 AND p.CommentCount>=0;

