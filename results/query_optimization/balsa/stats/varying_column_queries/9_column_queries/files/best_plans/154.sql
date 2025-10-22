/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-19 20:02:25'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=18 AND p.ViewCount>=0 AND p.ViewCount<=17255 AND p.CommentCount<=8 AND p.CreationDate>='2010-09-01 11:01:01'::timestamp AND p.CreationDate<='2014-07-17 22:39:38'::timestamp;

