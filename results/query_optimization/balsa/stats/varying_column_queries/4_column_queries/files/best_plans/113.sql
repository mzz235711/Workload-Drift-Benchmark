/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CreationDate<='2014-09-08 12:48:23'::timestamp;

