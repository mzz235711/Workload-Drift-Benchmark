/*+ HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.Score=10 AND p.ViewCount>=0 AND p.ViewCount<=3511 AND p.CommentCount>=0 AND p.CommentCount<=17 AND p.CreationDate<='2014-08-11 09:08:48'::timestamp;

