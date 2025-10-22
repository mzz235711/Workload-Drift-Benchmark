/*+ HashJoin(ph p c)
 HashJoin(ph p)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(c)
 Leading(((ph p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND ph.CreationDate>='2010-08-31 21:33:24'::timestamp AND ph.CreationDate<='2014-08-06 16:00:12'::timestamp;

