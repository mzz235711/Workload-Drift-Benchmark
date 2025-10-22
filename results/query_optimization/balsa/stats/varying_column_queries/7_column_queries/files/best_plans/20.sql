/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=1 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-21 13:01:39'::timestamp AND p.CreationDate<='2014-09-03 17:11:40'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-10-19 17:29:33'::timestamp AND ph.CreationDate<='2014-08-07 23:50:35'::timestamp;

