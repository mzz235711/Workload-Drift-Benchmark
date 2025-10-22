/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate<='2014-09-05 23:01:07'::timestamp AND p.CreationDate<='2014-08-29 14:38:40'::timestamp AND ph.CreationDate>='2010-12-08 04:01:56'::timestamp AND ph.CreationDate<='2014-09-06 15:39:37'::timestamp;

