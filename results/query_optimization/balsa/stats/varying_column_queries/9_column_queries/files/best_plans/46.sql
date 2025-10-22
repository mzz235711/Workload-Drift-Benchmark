/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-07-23 10:09:35'::timestamp AND c.CreationDate<='2014-09-13 17:52:57'::timestamp AND p.Score>=-1 AND p.ViewCount<=34044 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-07-09 01:25:24'::timestamp;

