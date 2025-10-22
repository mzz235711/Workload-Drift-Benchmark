/*+ HashJoin(p c)
 SeqScan(p)
 SeqScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-07-30 00:22:24'::timestamp;

