/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=2 AND c.CreationDate>='2010-07-19 21:54:08'::timestamp AND p.PostTypeId=2 AND p.Score<=12 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-08-03 09:04:50'::timestamp AND ph.CreationDate<='2014-09-08 12:18:02'::timestamp;

