/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount<=6283 AND p.CommentCount<=19 AND p.CreationDate<='2014-09-12 12:29:27'::timestamp;

