/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate>='2011-04-29 12:03:17'::timestamp AND ph.CreationDate<='2014-09-05 04:31:44'::timestamp;

