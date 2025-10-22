/*+ HashJoin(ph c p)
 MergeJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate<='2014-08-28 15:59:02'::timestamp AND p.PostTypeId=1 AND ph.CreationDate<='2014-09-04 01:09:05'::timestamp;

