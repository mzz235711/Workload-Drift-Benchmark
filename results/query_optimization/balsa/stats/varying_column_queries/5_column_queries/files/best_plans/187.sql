/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-04 23:21:07'::timestamp AND p.ViewCount<=2657 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6;

