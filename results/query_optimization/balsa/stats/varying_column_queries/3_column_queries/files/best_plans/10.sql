/*+ HashJoin(ph p c)
 HashJoin(ph p)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(c)
 Leading(((ph p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-07-21 15:50:24'::timestamp AND c.CreationDate<='2014-09-10 13:35:42'::timestamp AND ph.PostHistoryTypeId=25;

