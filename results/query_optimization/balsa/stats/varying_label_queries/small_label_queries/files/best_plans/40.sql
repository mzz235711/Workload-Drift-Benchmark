/*+ HashJoin(c ph p)
 HashJoin(ph p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.Score>=0 AND p.Score<=19 AND ph.PostHistoryTypeId=34 AND ph.CreationDate>='2010-10-12 04:26:28'::timestamp;

