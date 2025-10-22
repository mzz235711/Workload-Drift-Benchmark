/*+ HashJoin(ph p c)
 NestLoop(p c)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(c)
 Leading((ph (p c))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.ViewCount<=7749 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-09-16 11:47:42'::timestamp AND ph.CreationDate<='2014-07-20 20:40:20'::timestamp;

