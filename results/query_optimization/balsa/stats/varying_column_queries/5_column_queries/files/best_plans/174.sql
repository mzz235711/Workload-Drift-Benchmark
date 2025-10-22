/*+ HashJoin(p c)
 SeqScan(p)
 SeqScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND p.ViewCount<=5717 AND p.CommentCount=1 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-27 14:14:10'::timestamp;

