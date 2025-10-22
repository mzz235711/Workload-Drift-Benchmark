/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.CommentCount>=0 AND p.CommentCount<=15 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-23 08:18:52'::timestamp AND p.CreationDate<='2014-09-05 14:29:49'::timestamp;

