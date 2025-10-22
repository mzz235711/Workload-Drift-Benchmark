/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-03 07:09:09'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-11-15 20:28:53'::timestamp AND ph.CreationDate<='2014-08-19 23:23:36'::timestamp;

