/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-20 09:45:06'::timestamp;

