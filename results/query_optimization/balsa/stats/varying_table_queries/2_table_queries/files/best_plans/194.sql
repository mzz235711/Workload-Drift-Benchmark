/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-25 20:57:47'::timestamp AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CommentCount<=17;

