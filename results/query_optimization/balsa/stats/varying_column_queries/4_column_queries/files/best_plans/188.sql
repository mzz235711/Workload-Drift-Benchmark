/*+ HashJoin(c ph p)
 HashJoin(ph p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.PostTypeId=1 AND p.Score<=19 AND p.CreationDate>='2010-09-03 08:03:15'::timestamp AND ph.PostHistoryTypeId=2;

