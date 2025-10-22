/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-08-05 01:33:43'::timestamp AND c.CreationDate<='2014-09-13 09:51:24'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.FavoriteCount<=2;

