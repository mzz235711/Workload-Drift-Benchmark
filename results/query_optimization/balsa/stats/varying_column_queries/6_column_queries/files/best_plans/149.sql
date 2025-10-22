/*+ HashJoin(p c)
 SeqScan(p)
 SeqScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=3 AND c.CreationDate<='2014-08-25 00:45:20'::timestamp AND p.Score<=17 AND p.ViewCount>=0 AND p.ViewCount<=4306 AND p.CommentCount>=0;

