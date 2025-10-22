/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.PostTypeId=1 AND p.Score<=25 AND p.AnswerCount<=8 AND p.CommentCount>=0 AND p.CommentCount<=16;

