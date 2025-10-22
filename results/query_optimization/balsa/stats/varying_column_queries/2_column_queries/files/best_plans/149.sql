/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-09 08:11:31'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

