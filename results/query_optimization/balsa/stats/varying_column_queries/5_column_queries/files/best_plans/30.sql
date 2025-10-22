/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=23 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-07-29 01:45:55'::timestamp;

