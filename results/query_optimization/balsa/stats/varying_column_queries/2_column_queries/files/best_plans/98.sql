/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND ph.CreationDate>='2010-08-11 12:12:35'::timestamp AND ph.CreationDate<='2014-07-22 17:14:50'::timestamp;

