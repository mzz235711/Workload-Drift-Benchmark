/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-08 19:24:35'::timestamp AND p.CommentCount<=33 AND p.FavoriteCount>=0 AND p.FavoriteCount<=30;

