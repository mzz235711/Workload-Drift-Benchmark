/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.Score>=-2 AND p.Score<=15 AND p.CommentCount<=11 AND p.FavoriteCount<=9 AND p.CreationDate>='2010-07-19 20:23:22'::timestamp;

