/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.PostTypeId=2 AND p.Score=0 AND p.CommentCount>=0 AND p.CommentCount<=8;

