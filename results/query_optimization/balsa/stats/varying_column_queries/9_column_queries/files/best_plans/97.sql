/*+ HashJoin(c p ph)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(ph)
 Leading(((c p) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND c.CreationDate>='2010-07-10 19:44:06'::timestamp AND p.Score>=0 AND p.Score<=22 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND ph.PostHistoryTypeId=1;

