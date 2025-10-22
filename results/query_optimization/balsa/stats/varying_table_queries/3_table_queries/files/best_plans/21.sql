/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.AnswerCount<=7 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-22 09:17:27'::timestamp AND p.CreationDate<='2014-08-30 20:13:50'::timestamp AND ph.PostHistoryTypeId=1;

