/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-26 21:44:31'::timestamp AND p.Score<=22 AND p.ViewCount<=2717 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.CreationDate>='2009-04-12 07:57:36'::timestamp AND p.CreationDate<='2014-08-25 03:25:38'::timestamp;

