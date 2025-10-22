/*+ NestLoop(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND c.CreationDate>='2010-07-23 16:30:00'::timestamp AND p.CommentCount<=17;

