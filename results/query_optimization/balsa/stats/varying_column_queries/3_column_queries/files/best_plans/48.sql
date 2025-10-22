/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-08-01 02:58:57'::timestamp AND p.PostTypeId=1 AND p.CommentCount<=25;

