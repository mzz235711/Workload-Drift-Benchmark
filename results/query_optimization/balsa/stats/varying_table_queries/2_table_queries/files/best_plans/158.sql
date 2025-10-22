/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-19 20:01:15'::timestamp AND c.CreationDate<='2014-09-07 02:14:32'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=12;

