/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount<=5672 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-26 07:04:58'::timestamp AND p.CreationDate<='2014-09-05 15:44:24'::timestamp;

