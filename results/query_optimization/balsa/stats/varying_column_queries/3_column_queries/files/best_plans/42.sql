/*+ HashJoin(ph c p)
 MergeJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.Score<=28 AND p.ViewCount>=0 AND ph.CreationDate<='2014-07-22 08:09:18'::timestamp;

