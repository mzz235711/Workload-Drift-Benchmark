/*+ HashJoin(c p ph)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(ph)
 Leading(((c p) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-08-13 03:38:38'::timestamp AND p.CreationDate>='2010-07-28 04:21:06'::timestamp AND p.CreationDate<='2014-09-06 02:56:50'::timestamp;

