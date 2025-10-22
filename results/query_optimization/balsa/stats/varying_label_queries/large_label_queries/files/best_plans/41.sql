/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-28 13:43:41'::timestamp AND c.CreationDate<='2014-09-11 13:21:21'::timestamp AND p.Score>=0 AND p.ViewCount>=0 AND p.ViewCount<=1982 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-04 08:39:21'::timestamp;

